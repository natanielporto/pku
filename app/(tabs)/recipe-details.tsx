import React, { useMemo } from "react";
import { useLocalSearchParams } from "expo-router";
import { RecipeDetail } from "@/components/organisms/recipe-details";
import { FullRecipe } from "@/types/RecipeTypes/recipe";

export default function RecipeDetailsScreen() {
  const { recipe, category } = useLocalSearchParams<{
    recipe: string;
    category: string;
  }>();

  const recipeData: FullRecipe | null = useMemo(() => {
    if (!recipe) return null;
    try {
      return JSON.parse(recipe);
    } catch {
      return null;
    }
  }, [recipe]);

  if (!recipeData) {
    return null;
  }

  return <RecipeDetail recipe={recipeData} category={category} />;
}
