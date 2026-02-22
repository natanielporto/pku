const fs = require("fs");
const path = require("path");

// Lê o recipes.json original (pt-BR)
const recipesPt = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Tenta ler o recipes-en.json existente para não perder traduções
let recipesEnExisting = null;
const enPath = path.join(__dirname, "../recipes-en.json");
const enMap = new Map();

if (fs.existsSync(enPath)) {
  try {
    recipesEnExisting = JSON.parse(fs.readFileSync(enPath, "utf8"));
    recipesEnExisting.forEach((cat) => {
      cat.recipes.forEach((r) => {
        if (r.id) enMap.set(r.id, r);
      });
    });
    console.log("♻️  Mesclando com traduções existentes...");
  } catch (e) {
    console.warn("⚠️  Erro ao ler recipes-en.json existente, criando do zero.");
  }
}

// Cria template em inglês com estrutura vazia ou mescla com existente
const recipesEn = recipesPt.map((categoryData) => ({
  category: categoryData.category,
  image: categoryData.image,
  recipes: categoryData.recipes.map((recipe) => {
    const existing = enMap.get(recipe.id);
    return {
      id: recipe.id,
      name: existing?.name || "",
      image: recipe.image,
      ingredients:
        existing?.ingredients && existing.ingredients.length > 0
          ? existing.ingredients
          : [],
      preparation:
        existing?.preparation && existing.preparation.length > 0
          ? existing.preparation
          : [],
      servings: existing?.servings || "",
    };
  }),
}));

// Salva o template
const templatePath = path.join(__dirname, "../recipes-en.json");
fs.writeFileSync(templatePath, JSON.stringify(recipesEn, null, 2), "utf8");

console.log(`✅ Template criado: ${templatePath}`);
console.log(
  `📝 Total de receitas: ${recipesPt.reduce((acc, cat) => acc + cat.recipes.length, 0)}`
);
console.log(
  `\n💡 Agora você pode preencher as traduções em inglês no arquivo recipes-en.json`
);
console.log(`   Depois execute: node scripts/update-translations.js`);
