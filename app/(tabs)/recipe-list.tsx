import React, { useEffect, useState } from "react";
import { useTranslation } from "react-i18next";
import { FlatList, StyleSheet, TouchableOpacity, View } from "react-native";
import { Feather } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Title } from "@/components/atoms/Title/Title";
import { RecipeCard } from "@/components/organisms/recipe-card";
import recipesData from "@/recipes.json";
import {
  Category,
  GraphInfo,
  NutritionalInfo,
} from "@/types/RecipeTypes/recipe";

type CategoryData = {
  category: string;
  image: string;
  recipes: unknown[];
};

type Recipe = {
  id: string;
  name: string;
  image: string;
  [key: string]: unknown;
  category: Category;
  ingredients: string[];
  preparation: string;
  servings: string;
  nutritionalInformation: NutritionalInfo[];
  graphInformation: GraphInfo[];
};

export default function RecipeListScreen() {
  const { category } = useLocalSearchParams<{ category: string }>();
  const router = useRouter();
  const [recipes, setRecipes] = useState<Recipe[]>([]);
  const { t } = useTranslation();

  useEffect(() => {
    if (category) {
      const categoryData = (recipesData as CategoryData[]).find(
        (item) => item.category === category
      );
      if (categoryData) {
        setRecipes(categoryData.recipes as Recipe[]);
      }
    }
  }, [category]);

  function handleGoBack() {
    router.back();
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
});
