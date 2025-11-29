import Constants from "expo-constants";
import { supabase } from "./supabase";

/**
 * Testa a conexão com o Supabase
 * Retorna true se a conexão estiver funcionando, false caso contrário
 */
export async function testSupabaseConnection(): Promise<{
  success: boolean;
  message: string;
  data?: unknown;
}> {
  try {
    // Teste 1: Verificar se consegue fazer uma query simples
    // Isso testa a conexão básica com o Supabase
    const { data, error, status } = await supabase
      .from("recipes")
      .select("id")
      .limit(1);

    if (error) {
      // Se der erro mas o status for diferente de 0, significa que conseguiu conectar
      // mas pode ser que a tabela não exista ou não tenha permissão
      if (status === 404) {
        return {
          success: true,
          message: `✅ Conexão com Supabase OK! Mas a tabela "recipes" não existe ainda. Aplique a migration em supabase/migrations/`,
          data: {
            error: error.message,
            status,
            hint: "Execute: supabase db push",
          },
        };
      }

      if (status !== 0) {
        return {
          success: true,
          message: `✅ Conexão com Supabase OK! (Status: ${status})`,
          data: { error: error.message, status },
        };
      }

      return {
        success: false,
        message: `❌ Erro ao conectar: ${error.message}`,
        data: { error, status },
      };
    }

    return {
      success: true,
      message: `✅ Conexão com Supabase funcionando! Encontrou ${data?.length || 0} registro(s)`,
      data: { count: data?.length || 0, status },
    };
  } catch (error) {
    return {
      success: false,
      message: `❌ Erro ao testar conexão: ${error instanceof Error ? error.message : "Erro desconhecido"}`,
      data: error,
    };
  }
}

/**
 * Testa se as credenciais estão configuradas
 */
export function checkSupabaseConfig(): {
  hasUrl: boolean;
  hasKey: boolean;
  message: string;
  url?: string;
  key?: string;
} {
  const url = Constants.expoConfig?.extra?.SUPA_URL || "";
  const key = Constants.expoConfig?.extra?.SUPA_KEY || "";
  const anonKey = Constants.expoConfig?.extra?.SUPA_ANON_KEY || "";

  // Aceita SUPA_KEY ou SUPA_ANON_KEY
  const hasKey = !!(key || anonKey);

  const hasUrl = !!url;

  let message = "";
  if (!hasUrl && !hasKey) {
    message =
      "❌ SUPA_URL e chave (SUPA_KEY ou SUPA_ANON_KEY) não configuradas no .env";
  } else if (!hasUrl) {
    message = "❌ SUPA_URL não configurada no .env";
  } else if (!hasKey) {
    message = "❌ SUPA_KEY ou SUPA_ANON_KEY não configuradas no .env";
  } else {
    message = "✅ Credenciais configuradas";
  }

  return { hasUrl, hasKey, message, url, key: key || anonKey };
}
