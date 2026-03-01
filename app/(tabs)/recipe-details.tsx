import React from "react";
import { useLocalSearchParams } from "expo-router";
import { RecipeDetail } from "@/components/organisms/recipe-details";
import { useRecipe } from "@/hooks/useRecipes";
import { View, ActivityIndicator, Text, StyleSheet } from "react-native";
import { useTranslation } from "react-i18next";
import Colors from "@/constants/Colors";

export default function RecipeDetailsScreen() {
  const { id, category } = useLocalSearchParams<{
    id: string;
    category: string;
  }>();
  const { t } = useTranslation();

  const { data: recipeData, isLoading, error } = useRecipe(id ? Number(id) : undefined);

  if (isLoading) {
    return (
      <View style={styles.centerContainer}>
        <ActivityIndicator size="large" color={Colors.base.blue} />
        <Text style={styles.loadingText}>{t("home.loadingRecipes")}</Text>
      </View>
    );
  }

  if (error || !recipeData) {
    return (
      <View style={styles.centerContainer}>
        <Text style={styles.errorText}>
          {error instanceof Error ? error.message : t("home.errorLoadingRecipes")}
        </Text>
      </View>
    );
  }

  return <RecipeDetail recipe={recipeData} category={category || ""} />;
}

const styles = StyleSheet.create({
  centerContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: Colors.gray.background,
  },
  loadingText: {
    marginTop: 12,
    fontSize: 16,
    color: Colors.gray.dark,
  },
  errorText: {
    fontSize: 16,
    color: Colors.base.red,
    textAlign: "center",
    padding: 20,
  },
});
