import {
  ActivityIndicator,
  ScrollView,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Feather } from "@expo/vector-icons";
import { useNavigation, useRoute } from "@react-navigation/native";
import { useRecipesByCategory } from "@/hooks/useRecipes";
import { RecipeNavigatorRoutesProps } from "@/types/RecipeRoute/recipe-route";
import { RecipeCard } from "../recipe-card/index";
import { styles } from "./styles";

export function RecipeLists() {
  const route = useRoute();
  const { category } = route.params as { category: string };
  const navigation = useNavigation<RecipeNavigatorRoutesProps>();
  const { data: list = [], isLoading, error } = useRecipesByCategory(category);

  function handleGoBack() {
    navigation.goBack();
  }

  if (isLoading) {
    return (
      <SafeAreaView style={styles.container}>
        <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
          <Feather name="arrow-left" size={24} color="#888" />
          <Text style={styles.backText}>Retornar</Text>
        </TouchableOpacity>
        <View style={styles.centerContainer}>
          <ActivityIndicator size="large" color="#007AFF" />
          <Text style={styles.loadingText}>Carregando receitas...</Text>
        </View>
      </SafeAreaView>
    );
  }

  if (error) {
    return (
      <SafeAreaView style={styles.container}>
        <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
          <Feather name="arrow-left" size={24} color="#888" />
          <Text style={styles.backText}>Retornar</Text>
        </TouchableOpacity>
        <View style={styles.centerContainer}>
          <Text style={styles.errorText}>
            Erro ao carregar receitas:{" "}
            {error instanceof Error ? error.message : "Erro desconhecido"}
          </Text>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
        <Feather name="arrow-left" size={24} color="#888" />
        <Text style={styles.backText}>Retornar</Text>
      </TouchableOpacity>
      <ScrollView style={styles.scrollView}>
        {list?.map((item, index) => (
          <View key={item.id} style={styles.itemContainer}>
            {index === 0 ? (
              <RecipeCard ad={true} />
            ) : (
              <RecipeCard recipe={item} category={category} />
            )}
          </View>
        ))}
      </ScrollView>
    </SafeAreaView>
  );
}
