import { SupabaseClient, createClient } from "@supabase/supabase-js";
import Constants from "expo-constants";

// import { Database } from "../@types/supabase";

const SUPABASE_URL = Constants.expoConfig?.extra?.SUPA_URL || "";
const SUPABASE_KEY = Constants.expoConfig?.extra?.SUPA_KEY || "";
const SUPABASE_ANON_KEY = Constants.expoConfig?.extra?.SUPA_ANON_KEY || "";

// Para apps cliente, use a chave anônima. Para servidor, use SUPA_KEY
const key = SUPABASE_KEY || SUPABASE_ANON_KEY;

if (!key || !SUPABASE_URL) {
  throw new Error(
    "SUPABASE_URL e SUPA_KEY (ou SUPA_ANON_KEY) não encontradas. Configure no .env e app.config.js"
  );
}

export const supabase: SupabaseClient = createClient(
  // const supabase: SupabaseClient<Database> | null = createClient(
  SUPABASE_URL,
  key
);
