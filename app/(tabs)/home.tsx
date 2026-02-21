import React from "react";
import { useTranslation } from "react-i18next";
import { ActivityIndicator, FlatList, StyleSheet, Text } from "react-native";
import { View } from "@/components/Themed";
import { CategoryCard } from "@/components/organisms/category-card";
import { useCategoriesWithRecipes } from "@/hooks/useRecipes";

export default function Home() {
  const { t, i18n } = useTranslation();
  const {
    data: categories = [],
    isLoading,
    error,
  } = useCategoriesWithRecipes();

  if (isLoading) {
    return (
      <View style={[styles.wrapper, styles.centerContainer]}>
        <ActivityIndicator size="large" color="#007AFF" />
        <Text style={styles.loadingText}>{t("home.loadingRecipes")}</Text>
      </View>
    );
  }

  if (error) {
    console.error("Erro ao carregar receitas:", error);
    return (
      <View style={[styles.wrapper, styles.centerContainer]}>
        <Text style={styles.errorText}>{t("home.errorLoadingRecipes")}</Text>
      </View>
    );
  }

  return (
    <FlatList
      key={i18n.language}
      data={categories}
      keyExtractor={(item) => item.category}
      contentContainerStyle={styles.container}
      renderItem={({ item }) => (
        <View style={styles.itemContainer}>
          <CategoryCard categoryData={item} />
        </View>
      )}
    />
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
