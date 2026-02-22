const fs = require("fs");
const path = require("path");

// Lê o recipes.json (pt-BR)
const recipesData = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Tenta ler o recipes-en.json (traduções em inglês)
let recipesEn = null;
const enPath = path.join(__dirname, "../recipes-en.json");
if (fs.existsSync(enPath)) {
  recipesEn = JSON.parse(fs.readFileSync(enPath, "utf8"));
  console.log("✅ recipes-en.json encontrado - traduções serão incluídas");
} else {
  console.log(
    "⚠️  recipes-en.json não encontrado - apenas pt-BR será incluído"
  );
}

// Função para escapar strings SQL
function escapeSqlString(str) {
  if (!str) return "";
  return str.replace(/'/g, "''");
}

// Função para converter objeto para JSON SQL
function toJsonSql(obj) {
  if (!obj) return "NULL";
  return `'${JSON.stringify(obj).replace(/'/g, "''")}'::jsonb`;
}

// Gera INSERTs SQL
let sql = `-- INSERT statements for recipes table
-- Generated from recipes.json
-- Total recipes: ${recipesData.reduce((acc, cat) => acc + cat.recipes.length, 0)}
-- Generated at: ${new Date().toISOString()}

`;

// Opção 1: Todos de uma vez
const allInserts = [];

// Cria um mapa de traduções por ID para busca rápida e segura
    const enMap = new Map();
    if (recipesEn) {
      recipesEn.forEach((cat) => {
        cat.recipes.forEach((r) => {
          if (r.id) enMap.set(r.id, r);
        });
      });
    }

    recipesData.forEach((categoryData, catIndex) => {
      const category = categoryData.category;

      categoryData.recipes.forEach((recipe, recipeIndex) => {
        const nutritionalInfo = recipe.nutritionalInformation
          ? toJsonSql(recipe.nutritionalInformation)
          : "NULL";

        const graphInfo = recipe.graphInformation
          ? toJsonSql(recipe.graphInformation)
          : "NULL";

        // Busca tradução correspondente por ID
        let translations = "NULL";
        if (recipesEn) {
          const recipeEn = enMap.get(recipe.id);
          if (
            recipeEn &&
            (recipeEn.name || recipeEn.ingredients || recipeEn.preparation)
          ) {
            const translation = {
              "en-US": {
                name: recipeEn.name || recipe.name,
                ingredients: recipeEn.ingredients || recipe.ingredients,
                preparation: recipeEn.preparation || recipe.preparation,
                servings: recipeEn.servings || recipe.servings,
              },
            };
            translations = toJsonSql(translation);
          }
        }

        // Valida se o ID existe
        if (recipe.id === undefined || recipe.id === null) {
          console.warn(
            `⚠️  Receita sem ID ignorada: ${recipe.name} (categoria: ${category})`
          );
          return; // Pula esta receita
        }

        allInserts.push(`INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES (
  ${recipe.id},
  '${escapeSqlString(recipe.name)}',
  '${escapeSqlString(category)}',
  '${escapeSqlString(recipe.image || "")}',
  ${toJsonSql(recipe.ingredients)},
  ${toJsonSql(recipe.preparation)},
  '${escapeSqlString(recipe.servings || "")}',
  ${nutritionalInfo},
  ${graphInfo},
  ${translations}
)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  translations = EXCLUDED.translations,
  updated_at = NOW();`);
      });
    });

// Salva versão completa (todos de uma vez)
const allInsertsPath = path.join(
  __dirname,
  "../supabase/insert-all-recipes.sql"
);
fs.writeFileSync(allInsertsPath, sql + allInserts.join("\n\n"), "utf8");
console.log(`✅ Arquivo completo gerado: ${allInsertsPath}`);
console.log(`📊 Total de INSERTs: ${allInserts.length}`);

// Opção 2: Em batches de 10
const batchSize = 10;
const batches = [];
for (let i = 0; i < allInserts.length; i += batchSize) {
  batches.push(allInserts.slice(i, i + batchSize));
}

batches.forEach((batch, index) => {
  const batchNumber = index + 1;
  const batchPath = path.join(
    __dirname,
    `../supabase/insert-recipes-batch-${batchNumber.toString().padStart(3, "0")}.sql`
  );
  const batchSql = `-- Batch ${batchNumber} (recipes ${index * batchSize + 1} to ${Math.min((index + 1) * batchSize, allInserts.length)})\n\n${batch.join("\n\n")}`;
  fs.writeFileSync(batchPath, batchSql, "utf8");
});

console.log(
  `✅ ${batches.length} arquivos de batch gerados (10 receitas cada)`
);
console.log(`📁 Arquivos salvos em: supabase/insert-recipes-batch-*.sql`);
