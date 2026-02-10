const fs = require("fs");
const path = require("path");

// Lê o recipes.json original (pt-BR)
const recipesPt = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Função simples de tradução (básica - pode ser melhorada com API)
// Esta é uma tradução básica de termos comuns
const translations = {
  de: "of",
  "a base de": "based on",
  congelado: "frozen",
  suco: "juice",
  água: "water",
  açúcar: "sugar",
  "creme de leite": "cream",
  flan: "flan",
  baunilha: "vanilla",
  morango: "strawberry",
  limão: "lemon",
  geladeira: "refrigerator",
  panela: "pan",
  misture: "mix",
  ferver: "boil",
  gelatinizar: "gel",
  corte: "cut",
  bata: "beat",
  liquidificador: "blender",
  tacinhas: "cups",
  servir: "serve",
  "fogo baixo": "low heat",
  engrossar: "thicken",
  gelar: "chill",
  calda: "syrup",
  caramelo: "caramel",
  taças: "cups",
};

// Função para traduzir texto básico (substituições simples)
function translateText(text) {
  if (!text) return "";
  let translated = text.toLowerCase();

  // Substitui termos conhecidos
  Object.keys(translations).forEach((pt) => {
    const regex = new RegExp(pt, "gi");
    translated = translated.replace(regex, translations[pt]);
  });

  // Capitaliza primeira letra
  return translated.charAt(0).toUpperCase() + translated.slice(1);
}

// Função para traduzir nome da receita (remove hífens e capitaliza)
function translateRecipeName(name) {
  if (!name) return "";
  // Remove hífens e capitaliza palavras
  return name
    .split("-")
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join(" ");
}

// Traduz todas as receitas
const recipesEn = recipesPt.map((categoryData) => ({
  category: categoryData.category,
  image: categoryData.image,
  recipes: categoryData.recipes.map((recipe) => {
    // Traduz nome
    const translatedName = translateRecipeName(recipe.name);

    // Traduz ingredientes (tradução básica)
    const translatedIngredients = recipe.ingredients.map((ing) => {
      // Tenta traduzir, mas mantém números e unidades
      let translated = ing;
      Object.keys(translations).forEach((pt) => {
        const regex = new RegExp(`\\b${pt}\\b`, "gi");
        translated = translated.replace(regex, translations[pt]);
      });
      return translated;
    });

    // Traduz preparo (tradução básica)
    const translatedPreparation = recipe.preparation.map((step) => {
      // Remove o número do início e traduz
      const stepText = step.replace(/^\d+\s*-\s*/, "");
      let translated = stepText;
      Object.keys(translations).forEach((pt) => {
        const regex = new RegExp(`\\b${pt}\\b`, "gi");
        translated = translated.replace(regex, translations[pt]);
      });
      // Adiciona número de volta
      const stepNum = step.match(/^\d+/)?.[0] || "";
      return stepNum ? `${stepNum} - ${translated}` : translated;
    });

    // Traduz servings
    const translatedServings = recipe.servings
      ? recipe.servings.replace("taças", "cups").replace("taça", "cup")
      : "";

    return {
      id: recipe.id,
      name: translatedName,
      image: recipe.image,
      ingredients: translatedIngredients,
      preparation: translatedPreparation,
      servings: translatedServings,
    };
  }),
}));

// Salva o arquivo traduzido
const outputPath = path.join(__dirname, "../recipes-en.json");
fs.writeFileSync(outputPath, JSON.stringify(recipesEn, null, 2), "utf8");

console.log(`✅ Tradução automática gerada: ${outputPath}`);
console.log(
  `📝 Total de receitas traduzidas: ${recipesPt.reduce((acc, cat) => acc + cat.recipes.length, 0)}`
);
console.log(`\n⚠️  ATENÇÃO: Esta é uma tradução automática básica.`);
console.log(`   Revise e melhore as traduções manualmente antes de usar!`);
console.log(
  `\n💡 Dica: Use ferramentas como Google Translate ou DeepL para melhorar as traduções.`
);
