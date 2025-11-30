import React from "react";
import {
  ActivityIndicator,
  FlatList,
  StyleSheet,
  Text,
  TouchableOpacity,
} from "react-native";
import { useRouter } from "expo-router";
import { View } from "@/components/Themed";
import { CategoryCard } from "@/components/organisms/category-card";
import { useCategoriesWithRecipes } from "@/hooks/useRecipes";

export default function Home() {
  const router = useRouter();
  const {
    data: categories = [],
    isLoading,
    error,
  } = useCategoriesWithRecipes();

  if (isLoading) {
    return (
      <View style={[styles.wrapper, styles.centerContainer]}>
        <ActivityIndicator size="large" color="#007AFF" />
        <Text style={styles.loadingText}>Carregando receitas...</Text>
      </View>
    );
  }

  if (error) {
    return (
      <View style={[styles.wrapper, styles.centerContainer]}>
        <Text style={styles.errorText}>
          Erro ao carregar receitas:{" "}
          {error instanceof Error ? error.message : "Erro desconhecido"}
        </Text>
        <TouchableOpacity
          style={styles.testButton}
          onPress={() =>
            router.push({ pathname: "/(tabs)/test-supabase" as any })
          }
        >
          <Text style={styles.testButtonText}>🧪 Testar Conexão Supabase</Text>
        </TouchableOpacity>
      </View>
    );
  }

  return (
    <View style={styles.wrapper}>
      <TouchableOpacity
        style={styles.testButton}
        onPress={() =>
          router.push({ pathname: "/(tabs)/test-supabase" as any })
        }
      >
        <Text style={styles.testButtonText}>🧪 Testar Conexão Supabase</Text>
      </TouchableOpacity>
      <FlatList
        data={categories}
        keyExtractor={(item) => item.category}
        contentContainerStyle={styles.container}
        renderItem={({ item }) => (
          <View style={styles.itemContainer}>
            <CategoryCard categoryData={item} />
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  wrapper: {
    flex: 1,
  },
  centerContainer: {
    justifyContent: "center",
    alignItems: "center",
    padding: 20,
  },
  loadingText: {
    marginTop: 12,
    fontSize: 16,
    color: "#666",
  },
  errorText: {
    fontSize: 16,
    color: "#d32f2f",
    textAlign: "center",
    marginBottom: 16,
  },
  testButton: {
    backgroundColor: "#007AFF",
    padding: 12,
    margin: 8,
    borderRadius: 8,
    alignItems: "center",
  },
  testButtonText: {
    color: "#fff",
    fontSize: 14,
    fontWeight: "600",
  },
  container: {
    paddingTop: 8,
    backgroundColor: "#f0f0f0",
  },
  itemContainer: {
    marginBottom: 8,
  },
});
