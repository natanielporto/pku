import { useEffect, useState } from "react";
import "react-native-reanimated";
import { SafeAreaView } from "react-native-safe-area-context";
import FontAwesome from "@expo/vector-icons/FontAwesome";
import {
  DarkTheme,
  DefaultTheme,
  ThemeProvider,
} from "@react-navigation/native";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { useFonts } from "expo-font";
import { Stack, useRouter, useSegments } from "expo-router";
import * as SplashScreen from "expo-splash-screen";
import { useColorScheme } from "@/components/useColorScheme";
import { isOnboardingCompleted } from "@/services/onboarding";
import "../i18n";

// Create a client
const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: 3,
      staleTime: 24 * 60 * 60 * 1000, // 24 horas
    },
  },
});

export {
  // Catch any errors thrown by the Layout component.
  ErrorBoundary,
} from "expo-router";

export const unstable_settings = {
  // Ensure that reloading on `/modal` keeps a back button present.
  initialRouteName: "(tabs)",
};

// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  const [loaded, error] = useFonts({
    SpaceMono: require("../assets/fonts/SpaceMono-Regular.ttf"),
    ...FontAwesome.font,
  });

  // Expo Router uses Error Boundaries to catch errors in the navigation tree.
  useEffect(() => {
    if (error) throw error;
  }, [error]);

  useEffect(() => {
    if (loaded) {
      SplashScreen.hideAsync();
    }
  }, [loaded]);

  if (!loaded) {
    return null;
  }

  return <RootLayoutNav />;
}

function RootLayoutNav() {
  const colorScheme = useColorScheme();
  const router = useRouter();
  const segments = useSegments();
  const [isCheckingOnboarding, setIsCheckingOnboarding] = useState(true);
  const [hasCompletedOnboarding, setHasCompletedOnboarding] = useState(false);

  useEffect(() => {
    async function checkOnboarding() {
      try {
        const completed = await isOnboardingCompleted();
        setHasCompletedOnboarding(completed);
      } catch (error) {
        console.error("Erro ao verificar onboarding:", error);
        setHasCompletedOnboarding(false);
      } finally {
        setIsCheckingOnboarding(false);
      }
    }

    checkOnboarding();
  }, []);

  useEffect(() => {
    if (isCheckingOnboarding) return;

    const inTabsGroup = segments[0] === "(tabs)";

    if (!hasCompletedOnboarding && inTabsGroup) {
      // Se não completou onboarding e está tentando acessar tabs, redireciona
      router.replace("/onboarding");
    } else if (hasCompletedOnboarding && segments[0] === "onboarding") {
      // Se completou onboarding mas está na tela de onboarding, redireciona para home
      router.replace("/(tabs)/home");
    }
  }, [hasCompletedOnboarding, isCheckingOnboarding, segments]);

  if (isCheckingOnboarding) {
    return null; // Mostra splash enquanto verifica
  }

  return (
    <QueryClientProvider client={queryClient}>
      <ThemeProvider value={colorScheme === "dark" ? DarkTheme : DefaultTheme}>
        <SafeAreaView style={{ flex: 1 }}>
          <Stack>
            <Stack.Screen
              name="onboarding"
              options={{ headerShown: false, gestureEnabled: false }}
            />
            <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
            <Stack.Screen name="modal" options={{ presentation: "modal" }} />
          </Stack>
        </SafeAreaView>
      </ThemeProvider>
    </QueryClientProvider>
  );
}
