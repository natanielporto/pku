import { SupabaseClient, createClient } from "@supabase/supabase-js";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import { Platform } from "react-native";

// import { Database } from "../@types/supabase";

// Função para ajustar a URL do Supabase baseado na plataforma
function getSupabaseUrl(baseUrl: string): string {
  if (!baseUrl) return "";

  // Se já não é localhost/127.0.0.1, retorna como está (produção)
  if (!baseUrl.includes("127.0.0.1") && !baseUrl.includes("localhost")) {
    return baseUrl;
  }

  // Para Android Emulator, usa 10.0.2.2 em vez de 127.0.0.1
  if (Platform.OS === "android") {
    return baseUrl.replace("127.0.0.1", "10.0.2.2").replace("localhost", "10.0.2.2");
  }

  // Para iOS Simulator e Web, localhost funciona normalmente
  return baseUrl;
}

const SUPABASE_URL_RAW = Constants.expoConfig?.extra?.SUPA_URL || "";
const SUPABASE_KEY = Constants.expoConfig?.extra?.SUPA_KEY || "";
const SUPABASE_ANON_KEY = Constants.expoConfig?.extra?.SUPA_ANON_KEY || "";

// Ajusta a URL baseado na plataforma
const SUPABASE_URL = getSupabaseUrl(SUPABASE_URL_RAW);

// Debug: log das variáveis (remover em produção)
console.log("🔍 Supabase Config:", {
  platform: Platform.OS,
  urlRaw: SUPABASE_URL_RAW ? `${SUPABASE_URL_RAW.substring(0, 20)}...` : "VAZIO",
  urlAdjusted: SUPABASE_URL ? `${SUPABASE_URL.substring(0, 30)}...` : "VAZIO",
  hasKey: !!SUPABASE_KEY,
  hasAnonKey: !!SUPABASE_ANON_KEY,
  expoConfigExists: !!Constants.expoConfig?.extra,
});

// Para apps cliente, use a chave anônima. Para servidor, use SUPA_KEY
const key = SUPABASE_KEY || SUPABASE_ANON_KEY;

if (!key || !SUPABASE_URL) {
  const errorMsg = `SUPABASE_URL e SUPA_KEY (ou SUPA_ANON_KEY) não encontradas. Configure no .env e app.config.js
URL: ${SUPABASE_URL || "VAZIO"}
KEY: ${key ? "EXISTE" : "VAZIO"}
ANON_KEY: ${SUPABASE_ANON_KEY ? "EXISTE" : "VAZIO"}`;
  console.error("❌ Erro de configuração Supabase:", errorMsg);
  throw new Error(errorMsg);
}

export const supabase: SupabaseClient = createClient(
  SUPABASE_URL,
  key,
  {
    auth: {
      storage: AsyncStorage,
      autoRefreshToken: true,
      persistSession: true,
      detectSessionInUrl: false,
    },
  }
);
