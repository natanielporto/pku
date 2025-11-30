import i18n from "@/i18n";
import {
  FullRecipe,
  GraphInfo,
  NutritionalInfo,
} from "@/types/RecipeTypes/recipe";
import { supabase } from "./supabase";

// Tipo do banco de dados (snake_case)
type RecipeFromDB = {
  id: number;
  name: string;
  category: string;
  image: string | null;
  ingredients: string[];
  preparation: string[];
  servings: string | null;
  nutritional_information: NutritionalInfo[] | null;
  graph_information: GraphInfo[] | null;
  translations: Record<string, any> | null;
  created_at?: string;
  updated_at?: string;
};

// Tipo das traduções no banco
type RecipeTranslation = {
  name?: string;
  ingredients?: string[];
  preparation?: string[];
  servings?: string;
};

// Transforma dados do banco (snake_case) para o formato do frontend (camelCase)
// Aplica traduções baseadas no idioma atual
function transformRecipeFromDB(
  recipe: RecipeFromDB
): FullRecipe & { category: string } {
  const currentLanguage = i18n.language || "en";

  // Mapeia o idioma do i18n para o formato do banco
  // "en" ou "en-US" -> "en-US", "pt" ou "pt-BR" -> usa dados originais (pt-BR)
  // Verifica se o idioma começa com "en" para usar tradução
  const shouldUseTranslation = currentLanguage.startsWith("en");
  const translationKey = shouldUseTranslation ? "en-US" : null;

  // Busca a tradução se existir e o idioma for inglês
  const translation: RecipeTranslation | null =
    translationKey && recipe.translations?.[translationKey]
      ? recipe.translations[translationKey]
      : null;

  return {
    id: recipe.id,
    name: translation?.name || recipe.name,
    category: recipe.category,
    image: recipe.image || "",
    ingredients: translation?.ingredients || recipe.ingredients || [],
    preparation: translation?.preparation || recipe.preparation || [],
    servings: translation?.servings || recipe.servings || "",
    nutritionalInformation: recipe.nutritional_information || [],
    graphInformation: recipe.graph_information || [],
  };
}

// Busca todas as receitas
export async function fetchAllRecipes(): Promise<
  (FullRecipe & { category: string })[]
> {
  const { data, error } = await supabase
    .from("recipes")
    .select("*")
    .order("id", { ascending: true });

  if (error) {
    throw new Error(`Erro ao buscar receitas: ${error.message}`);
  }

  return (data || []).map(transformRecipeFromDB);
}

// Busca receitas por categoria
export async function fetchRecipesByCategory(
  category: string
): Promise<(FullRecipe & { category: string })[]> {
  const { data, error } = await supabase
    .from("recipes")
    .select("*")
    .eq("category", category)
    .order("id", { ascending: true });

  if (error) {
    throw new Error(`Erro ao buscar receitas por categoria: ${error.message}`);
  }

  return (data || []).map(transformRecipeFromDB);
}

// Busca uma receita por ID
export async function fetchRecipeById(
  id: number
): Promise<(FullRecipe & { category: string }) | null> {
  const { data, error } = await supabase
    .from("recipes")
    .select("*")
    .eq("id", id)
    .single();

  if (error) {
    if (error.code === "PGRST116") {
      // Não encontrado
      return null;
    }
    throw new Error(`Erro ao buscar receita: ${error.message}`);
  }

  return data ? transformRecipeFromDB(data) : null;
}

// Busca todas as categorias únicas com suas receitas
export async function fetchCategoriesWithRecipes(): Promise<
  Array<{
    category: string;
    image: string;
    recipes: (FullRecipe & { category: string })[];
  }>
> {
  const recipes = await fetchAllRecipes();

  // Agrupa receitas por categoria
  const categoryMap = new Map<
    string,
    {
      category: string;
      image: string;
      recipes: (FullRecipe & { category: string })[];
    }
  >();

  recipes.forEach((recipe) => {
    // Mapeia o nome da categoria do banco para o formato esperado
    const categoryKey = recipe.category || "unknown";

    if (!categoryMap.has(categoryKey)) {
      // Usa a primeira imagem de receita da categoria como imagem da categoria
      const firstRecipe = recipes.find((r) => r.category === categoryKey);
      categoryMap.set(categoryKey, {
        category: categoryKey,
        image: firstRecipe?.image || "",
        recipes: [],
      });
    }

    categoryMap.get(categoryKey)!.recipes.push(recipe);
  });

  return Array.from(categoryMap.values());
}
