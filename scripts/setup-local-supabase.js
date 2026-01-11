#!/usr/bin/env node

/**
 * Script para configurar o Supabase local
 *
 * Uso:
 * 1. Inicie o Supabase: yarn db:start (ou npm run db:start)
 * 2. Execute este script: yarn db:setup-local (ou node scripts/setup-local-supabase.js)
 * 3. O script criará/atualizará o arquivo .env com as credenciais locais
 */

const fs = require("fs");
const path = require("path");
const { execSync } = require("child_process");

const envPath = path.join(__dirname, "..", ".env");
const envExamplePath = path.join(__dirname, "..", "env.example");

try {
  // Verifica se o Supabase está rodando
  console.log("🔍 Verificando se o Supabase local está rodando...");
  const status = execSync("supabase status --output json", {
    encoding: "utf-8",
  });

  // Remove warnings e linhas não-JSON do output
  // Procura pela primeira linha que começa com { e pega até o final do JSON
  const lines = status.split("\n");
  let jsonStart = -1;
  for (let i = 0; i < lines.length; i++) {
    if (lines[i].trim().startsWith("{")) {
      jsonStart = i;
      break;
    }
  }

  if (jsonStart === -1) {
    throw new Error("Não foi possível encontrar JSON no output do status");
  }

  const jsonLines = lines.slice(jsonStart);
  const jsonContent = jsonLines.join("\n").trim();
  const statusData = JSON.parse(jsonContent);

  // Verifica se tem as credenciais necessárias (novo formato)
  if (!statusData.API_URL && !statusData.ANON_KEY) {
    // Tenta formato antigo
    if (!statusData.api || !statusData.db) {
      throw new Error(
        "❌ Supabase local não está rodando. Execute: yarn db:start"
      );
    }
  }

  // Obtém as credenciais (suporta ambos os formatos)
  const apiUrl =
    statusData.API_URL || statusData.api?.url || "http://127.0.0.1:54321";
  const anonKey =
    statusData.ANON_KEY ||
    statusData.api?.anon_key ||
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblvNn0";
  const serviceKey =
    statusData.SERVICE_ROLE_KEY ||
    statusData.api?.service_role_key ||
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImV4cCI6MTk4MzgxMjk5Nn0.EGIM96RAZx35lJzdJsyH-qQwv8Hdp7fsn3W0YpN81IU";
  const dbUrl =
    statusData.DB_URL ||
    statusData.db?.url ||
    "postgresql://postgres:postgres@127.0.0.1:54322/postgres";

  // Lê o .env existente ou cria novo
  let envContent = "";
  if (fs.existsSync(envPath)) {
    envContent = fs.readFileSync(envPath, "utf-8");
  } else if (fs.existsSync(envExamplePath)) {
    envContent = fs.readFileSync(envExamplePath, "utf-8");
  }

  // Atualiza ou adiciona as variáveis
  const envVars = {
    SUPA_URL: apiUrl,
    SUPA_ANON_KEY: anonKey,
    SUPA_KEY: serviceKey,
    SUPA_DATABASE: dbUrl,
    SUPA_PASSWORD: "postgres", // Senha padrão do Supabase local
  };

  // Atualiza o conteúdo do .env
  let updatedContent = envContent;
  for (const [key, value] of Object.entries(envVars)) {
    const regex = new RegExp(`^${key}=.*$`, "m");
    if (regex.test(updatedContent)) {
      updatedContent = updatedContent.replace(regex, `${key}=${value}`);
    } else {
      // Adiciona no final se não existir
      updatedContent += `\n${key}=${value}`;
    }
  }

  // Remove linhas vazias duplicadas
  updatedContent = updatedContent.replace(/\n{3,}/g, "\n\n").trim() + "\n";

  // Salva o arquivo
  fs.writeFileSync(envPath, updatedContent);

  console.log("✅ Arquivo .env configurado com sucesso!");
  console.log("\n📋 Credenciais do Supabase local:");
  console.log(`   API URL: ${apiUrl}`);
  console.log(`   Studio: http://localhost:54323`);
  console.log(`   Database: ${dbUrl.replace(/:[^:@]+@/, ":****@")}`);
  console.log("\n💡 Para desenvolvimento, use estas credenciais.");
  console.log(
    "💡 Quando for para produção, atualize o .env com as credenciais da nuvem."
  );
} catch (error) {
  if (error.message.includes("not found") || error.message.includes("ENOENT")) {
    console.error("❌ Erro: Supabase CLI não encontrado.");
    console.error("   Instale com: npm install -g supabase");
  } else if (error.message.includes("não está rodando")) {
    console.error(error.message);
    console.error("\n📝 Para iniciar o Supabase local:");
    console.error("   npm run db:start");
  } else {
    console.error("❌ Erro:", error.message);
    console.error("\n💡 Certifique-se de que:");
    console.error("   1. O Supabase está rodando (npm run db:start)");
    console.error(
      "   2. O Supabase CLI está instalado (npm install -g supabase)"
    );
  }
  process.exit(1);
}
