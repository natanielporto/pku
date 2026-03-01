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

  // Se não há tradução e o nome é um slug (kebab-case), formata para um formato legível
  let recipeName = translation?.name || recipe.name;

  // Se o nome ainda é um slug (contém hífens e está em minúsculas), formata
  if (!translation?.name && /^[a-z0-9-]+$/.test(recipeName)) {
    // Converte kebab-case para formato legível: "rain-little-cake" -> "Rain Little Cake"
    recipeName = recipeName
      .split("-")
      .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
      .join(" ");
  }

  return {
    id: recipe.id,
    name: recipeName,
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
  console.log("🔍 Buscando receitas do Supabase...");
  const { data, error } = await supabase
    .from("recipes")
    .select("*")
    .order("id", { ascending: true });

  if (error) {
    console.error("❌ Erro ao buscar receitas:", error);
    throw new Error(`Erro ao buscar receitas: ${error.message} (code: ${error.code || "N/A"})`);
  }

  console.log(`✅ ${data?.length || 0} receitas encontradas`);
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
  console.log("🔍 Buscando categorias do Supabase...");
  
  // Primeiro, buscamos as categorias únicas e uma imagem para cada
  // No Supabase/PostgreSQL, podemos usar NOT NULL e um agrupamento ou select distinct
  // Para simplificar e garantir que temos uma imagem, buscamos o primeiro registro de cada categoria
  const { data: categoriesData, error } = await supabase
    .from("recipes")
    .select("category, image")
    .not("category", "is", null)
    .order("id", { ascending: true });

  if (error) {
    console.error("❌ Erro ao buscar categorias:", error);
    throw new Error(`Erro ao buscar categorias: ${error.message}`);
  }

  // Agrupa para pegar uma imagem única por categoria
  const categoryMap = new Map<string, string>();
  categoriesData?.forEach(item => {
    if (item.category && !categoryMap.has(item.category)) {
      categoryMap.set(item.category, item.image || "");
    }
  });

  // Retorna no formato esperado pelo frontend
  // Nota: O campo 'recipes' agora virá vazio inicialmente ou pode ser removido 
  // se o Home não precisar das receitas imediatamente (mais eficiente)
  return Array.from(categoryMap.entries()).map(([category, image]) => ({
    category,
    image,
    recipes: [], // As receitas serão carregadas na recipe-list por categoria
  }));
}
