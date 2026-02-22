const fs = require("fs");
const path = require("path");

/**
 * Script para atualizar traduções nas receitas existentes
 *
 * Uso:
 * 1. Crie um arquivo recipes-en.json com as traduções em inglês
 * 2. Execute: node scripts/update-translations.js
 *
 * O script gera um arquivo SQL que você pode executar no Supabase
 */

// Lê o recipes.json original (pt-BR)
const recipesPt = JSON.parse(
  fs.readFileSync(path.join(__dirname, "../recipes.json"), "utf8")
);

// Tenta ler o recipes-en.json (se existir)
let recipesEn = null;
const enPath = path.join(__dirname, "../recipes-en.json");
if (fs.existsSync(enPath)) {
  recipesEn = JSON.parse(fs.readFileSync(enPath, "utf8"));
  console.log("✅ recipes-en.json encontrado");
} else {
  console.log("⚠️  recipes-en.json não encontrado. Criando template...");
  // Cria um template vazio
  recipesEn = recipesPt.map((cat) => ({
    ...cat,
    recipes: cat.recipes.map(() => ({})),
  }));
}

// Função para converter objeto para JSON SQL
function toJsonSql(obj) {
  if (!obj || Object.keys(obj).length === 0) return "NULL";
  return `'${JSON.stringify(obj).replace(/'/g, "''")}'::jsonb`;
}

// Gera SQL para atualizar traduções
let sql = `-- Update translations for existing recipes
-- Generated from recipes-en.json
-- This file is auto-generated. Do not edit manually.

`;

    // Cria um mapa de traduções por ID para busca rápida e segura
    const enMap = new Map();
    if (recipesEn) {
      recipesEn.forEach((cat) => {
        cat.recipes.forEach((r) => {
          if (r.id) enMap.set(r.id, r);
        });
      });
    }

    recipesPt.forEach((categoryData, catIndex) => {
      categoryData.recipes.forEach((recipePt, recipeIndex) => {
        const recipeEn = enMap.get(recipePt.id);

        if (
          recipeEn &&
          (recipeEn.name || recipeEn.ingredients || recipeEn.preparation)
        ) {
          const translation = {
            "en-US": {
              name: recipeEn.name || recipePt.name,
              ingredients: recipeEn.ingredients || recipePt.ingredients,
              preparation: recipeEn.preparation || recipePt.preparation,
              servings: recipeEn.servings || recipePt.servings,
            },
          };

          updates.push(`UPDATE recipes
SET translations = ${toJsonSql(translation)}
WHERE id = ${recipePt.id};`);
        }
      });
    });

if (updates.length > 0) {
  sql += updates.join("\n\n");
  console.log(`✅ ${updates.length} receitas com traduções encontradas`);
} else {
  sql +=
    "-- Nenhuma tradução encontrada. Adicione traduções no recipes-en.json primeiro.";
  console.log("⚠️  Nenhuma tradução encontrada");
}

// Salva o arquivo
const outputPath = path.join(__dirname, "../supabase/update-translations.sql");
fs.writeFileSync(outputPath, sql, "utf8");

console.log(`\n📄 Arquivo gerado: ${outputPath}`);
console.log("💡 Execute este SQL no Supabase para atualizar as traduções");
