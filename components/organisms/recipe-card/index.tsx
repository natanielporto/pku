import React from "react";
import { useRouter } from "expo-router";
import { FullRecipe } from "@/types/RecipeTypes/recipe";
import { AdCard } from "../../atoms/ad-card/index";
import { ButtonCard } from "../../atoms/button-card";

type Props = {
  recipe?: FullRecipe & { category?: string };
  ad?: boolean;
  category?: string;
};

export function RecipeCard({ recipe, ad = false, category }: Props) {
  const router = useRouter();

  function handleRecipeSelect() {
    if (recipe) {
      router.push({
        pathname: "/(tabs)/recipe-details",
        params: {
          recipe: JSON.stringify(recipe),
          category: category || recipe.category || "",
        },
      });
    }
  }

  return ad ? (
    <AdCard />
  ) : (
    <ButtonCard
      onPress={handleRecipeSelect}
      category={recipe?.name!}
      image={recipe?.image!}
      skipTranslation={true}
    />
  );
}
