const fs = require("fs");
const path = require("path");

// Lê o recipes.json
const recipesData = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Função para escapar strings SQL
function escapeSqlString(str) {
  if (!str) return "";
  return str.replace(/'/g, "''");
}

// Função para converter objeto para JSON SQL
function toJsonSql(obj) {
  return `'${JSON.stringify(obj).replace(/'/g, "''")}'::jsonb`;
}

// Gera o SQL de seed
let sql = `-- Seed data for recipes table
-- Generated from recipes.json
-- This file is auto-generated. Do not edit manually.

-- Clear existing data (optional - uncomment if needed)
-- TRUNCATE TABLE recipes CASCADE;

-- Insert recipes
INSERT INTO recipes (id, name, category, image, ingredients, preparation, servings, nutritional_information, graph_information, translations)
VALUES
`;

const values = [];

recipesData.forEach((categoryData) => {
  const category = categoryData.category;

  categoryData.recipes.forEach((recipe) => {
    const nutritionalInfo = recipe.nutritionalInformation
      ? toJsonSql(recipe.nutritionalInformation)
      : "NULL";

    const graphInfo = recipe.graphInformation
      ? toJsonSql(recipe.graphInformation)
      : "NULL";

    // Traduções vazias por enquanto (pode ser preenchido depois)
    const translations = "NULL";

    values.push(`(
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
)`);
  });
});

sql += values.join(",\n") + ";\n";

// Adiciona ON CONFLICT para evitar duplicatas
sql += `
-- Update on conflict (idempotent)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  category = EXCLUDED.category,
  image = EXCLUDED.image,
  ingredients = EXCLUDED.ingredients,
  preparation = EXCLUDED.preparation,
  servings = EXCLUDED.servings,
  nutritional_information = EXCLUDED.nutritional_information,
  graph_information = EXCLUDED.graph_information,
  updated_at = NOW();
`;

// Salva o arquivo seed.sql
const seedPath = path.join(__dirname, "../supabase/seed.sql");
fs.writeFileSync(seedPath, sql, "utf8");

console.log(`✅ Seed file generated: ${seedPath}`);
console.log(`📊 Total recipes: ${values.length}`);
