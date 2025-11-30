import { useTranslation } from "react-i18next";
import { useQuery } from "@tanstack/react-query";
import {
  fetchAllRecipes,
  fetchCategoriesWithRecipes,
  fetchRecipeById,
  fetchRecipesByCategory,
} from "@/services/recipes";
import { FullRecipe } from "@/types/RecipeTypes/recipe";

// Query keys - inclui o idioma para invalidar cache quando mudar
export const recipeKeys = {
  all: (language?: string) => ["recipes", language] as const,
  lists: (language?: string) => [...recipeKeys.all(language), "list"] as const,
  list: (category?: string, language?: string) =>
    [...recipeKeys.lists(language), category] as const,
  details: (language?: string) =>
    [...recipeKeys.all(language), "detail"] as const,
  detail: (id: number, language?: string) =>
    [...recipeKeys.details(language), id] as const,
  categories: (language?: string) =>
    [...recipeKeys.all(language), "categories"] as const,
};

// Hook para buscar todas as receitas
export function useRecipes() {
  const { i18n } = useTranslation();
  return useQuery({
    queryKey: recipeKeys.lists(i18n.language),
    queryFn: fetchAllRecipes,
    staleTime: 24 * 60 * 60 * 1000, // 24 horas
  });
}

// Hook para buscar receitas por categoria
export function useRecipesByCategory(category: string) {
  const { i18n } = useTranslation();
  return useQuery({
    queryKey: recipeKeys.list(category, i18n.language),
    queryFn: () => fetchRecipesByCategory(category),
    enabled: !!category,
    staleTime: 24 * 60 * 60 * 1000, // 24 horas
  });
}

// Hook para buscar uma receita por ID
export function useRecipe(id: number | undefined) {
  const { i18n } = useTranslation();
  return useQuery({
    queryKey: recipeKeys.detail(id!, i18n.language),
    queryFn: () => fetchRecipeById(id!),
    enabled: !!id,
    staleTime: 24 * 60 * 60 * 1000, // 24 horas
  });
}

// Hook para buscar categorias com receitas (formato agrupado)
export function useCategoriesWithRecipes() {
  const { i18n } = useTranslation();
  return useQuery({
    queryKey: recipeKeys.categories(i18n.language),
    queryFn: fetchCategoriesWithRecipes,
    staleTime: 24 * 60 * 60 * 1000, // 24 horas
  });
}
