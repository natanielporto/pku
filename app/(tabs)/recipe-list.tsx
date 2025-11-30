import React from "react";
import { useTranslation } from "react-i18next";
import {
  ActivityIndicator,
  FlatList,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { Feather } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Title } from "@/components/atoms/Title/Title";
import { RecipeCard } from "@/components/organisms/recipe-card";
import { useRecipesByCategory } from "@/hooks/useRecipes";

export default function RecipeListScreen() {
  const { category } = useLocalSearchParams<{ category: string }>();
  const router = useRouter();
  const { t } = useTranslation();
  const {
    data: recipes = [],
    isLoading,
    error,
  } = useRecipesByCategory(category || "");

  function handleGoBack() {
    router.back();
  }

  if (isLoading) {
    return (
      <View style={styles.container}>
        <View style={styles.headerRow}>
          <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
            <Feather name="arrow-left" size={16} color="#888" />
            <Title title={t(`tabs.home`)} />
          </TouchableOpacity>
        </View>
        <View style={styles.centerContainer}>
          <ActivityIndicator size="large" color="#007AFF" />
          <Text style={styles.loadingText}>Carregando receitas...</Text>
        </View>
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.container}>
        <View style={styles.headerRow}>
          <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
            <Feather name="arrow-left" size={16} color="#888" />
            <Title title={t(`tabs.home`)} />
          </TouchableOpacity>
        </View>
        <View style={styles.centerContainer}>
          <Text style={styles.errorText}>
            Erro ao carregar receitas:{" "}
            {error instanceof Error ? error.message : "Erro desconhecido"}
          </Text>
        </View>
      </View>
    );
  }

  return (
    <View>
      <View style={styles.headerRow}>
        <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
          <Feather name="arrow-left" size={16} color="#888" />
          <Title title={t(`tabs.home`)} />
        </TouchableOpacity>
      </View>
      <FlatList
        data={recipes}
        style={styles.flatList}
        keyExtractor={(item) => String(item.id)}
        renderItem={({ item }) => (
          <View style={styles.itemContainer}>
            <RecipeCard recipe={item} category={category} />
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f9f9f9",
  },
  centerContainer: {
    flex: 1,
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
  },
  backText: {
    color: "#888",
  },
  itemContainer: {
    marginBottom: 8,
  },
  headerRow: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: 16,
    paddingLeft: 16,
  },
  backButton: {
    marginRight: 4,
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
  },
  flatList: {
    marginBottom: 54,
  },
});
