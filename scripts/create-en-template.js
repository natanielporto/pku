const fs = require("fs");
const path = require("path");

// Lê o recipes.json original (pt-BR)
const recipesPt = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Cria template em inglês com estrutura vazia
const recipesEn = recipesPt.map((categoryData) => ({
  category: categoryData.category,
  image: categoryData.image,
  recipes: categoryData.recipes.map((recipe) => ({
    id: recipe.id,
    name: "", // Preencher com tradução
    image: recipe.image, // Mesma imagem
    ingredients: [], // Preencher com traduções
    preparation: [], // Preencher com traduções
    servings: "", // Preencher com tradução
    // nutritionalInformation e graphInformation não precisam de tradução
    // (são números)
  })),
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
