#!/usr/bin/env node

/**
 * Script para inserir receitas no banco de dados Supabase local
 *
 * Uso: node scripts/insert-recipes.js
 *
 * Requisitos:
 * - Supabase local deve estar rodando (yarn db:start)
 * - Arquivo supabase/insert-all-recipes.sql deve existir
 */

const fs = require("fs");
const path = require("path");
const { execSync } = require("child_process");

const sqlFilePath = path.join(__dirname, "../supabase/insert-all-recipes.sql");

if (!fs.existsSync(sqlFilePath)) {
  console.error("❌ Arquivo insert-all-recipes.sql não encontrado!");
  console.error("   Execute primeiro: yarn db:inserts:generate");
  process.exit(1);
}

try {
  console.log("🔍 Verificando se o Supabase está rodando...");
  execSync("supabase status --output json", { encoding: "utf-8", stdio: "pipe" });
  console.log("✅ Supabase está rodando\n");
} catch (error) {
  console.error("❌ Supabase não está rodando!");
  console.error("   Execute: yarn db:start");
  process.exit(1);
}

try {
  console.log("📖 Lendo arquivo SQL...");

  console.log("💾 Inserindo receitas no banco de dados...");
  console.log("   (Isso pode demorar alguns segundos...)\n");

  // Executa o SQL usando psql via Docker do Supabase
  // O Supabase local expõe o PostgreSQL na porta 54322
  const dbUrl = "postgresql://postgres:postgres@127.0.0.1:54322/postgres";

  // Tenta usar psql -f (arquivo) se disponível - mais confiável para SQL longo
  try {
    execSync(`psql "${dbUrl}" -f "${sqlFilePath}"`, {
      encoding: "utf-8",
      stdio: "inherit",
    });
  } catch (psqlError) {
    // Se psql não estiver disponível, usa docker exec
    console.log("   Usando Docker para executar SQL...\n");

    // Encontra o container do Supabase
    const containers = execSync('docker ps --format "{{.Names}}"', { encoding: "utf-8" });
    const supabaseContainer = containers
      .split("\n")
      .find((name) => name.includes("supabase_db_"));

    if (!supabaseContainer) {
      throw new Error("Container do Supabase não encontrado");
    }

    execSync(
      `docker exec -i ${supabaseContainer.trim()} psql -U postgres -d postgres -f - < "${sqlFilePath}"`,
      { encoding: "utf-8", stdio: "inherit" }
    );
  }

  console.log("\n✅ Receitas inseridas com sucesso!");
  console.log("💡 Você pode verificar no Supabase Studio: http://localhost:54323");

} catch (error) {
  console.error("\n❌ Erro ao inserir receitas:");
  console.error(error.message);
  process.exit(1);
}
