import { makeRedirectUri } from "expo-auth-session";
import * as WebBrowser from "expo-web-browser";
import { supabase } from "./supabase";

// Necessário para fechar o browser automaticamente após login
WebBrowser.maybeCompleteAuthSession();

/**
 * Login com Google usando OAuth
 */
export async function signInWithGoogle() {
  try {
    const redirectUrl = makeRedirectUri({
      scheme: "mrpkunew",
      path: "auth/callback",
    });

    console.log("🔵 Google OAuth - Redirect URL:", redirectUrl);

    const { data, error } = await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: redirectUrl,
        skipBrowserRedirect: false,
      },
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao fazer login com Google:", error);
    return { data: null, error };
  }
}

/**
 * Login com Facebook usando OAuth
 */
export async function signInWithFacebook() {
  try {
    const redirectUrl = makeRedirectUri({
      scheme: "mrpkunew",
      path: "auth/callback",
    });

    console.log("🔵 Facebook OAuth - Redirect URL:", redirectUrl);

    const { data, error } = await supabase.auth.signInWithOAuth({
      provider: "facebook",
      options: {
        redirectTo: redirectUrl,
        skipBrowserRedirect: false,
      },
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao fazer login com Facebook:", error);
    return { data: null, error };
  }
}

/**
 * Cadastro com Email e Senha
 */
export async function signUpWithEmail(email: string, password: string) {
  try {
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        // Metadados que serão salvos no auth.users.raw_user_meta_data
        data: {
          email,
        },
      },
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao cadastrar com email:", error);
    return { data: null, error };
  }
}

/**
 * Login com Email e Senha
 */
export async function signInWithEmail(email: string, password: string) {
  try {
    const { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao fazer login com email:", error);
    return { data: null, error };
  }
}

/**
 * Logout (desconecta o usuário)
 */
export async function signOut() {
  try {
    const { error } = await supabase.auth.signOut();

    if (error) throw error;

    return { error: null };
  } catch (error) {
    console.error("❌ Erro ao fazer logout:", error);
    return { error };
  }
}

/**
 * Obtém o usuário atual (se estiver logado)
 */
export async function getCurrentUser() {
  try {
    const {
      data: { user },
      error,
    } = await supabase.auth.getUser();

    if (error) throw error;

    return { user, error: null };
  } catch (error) {
    console.error("❌ Erro ao obter usuário atual:", error);
    return { user: null, error };
  }
}

/**
 * Obtém a sessão atual
 */
export async function getSession() {
  try {
    const {
      data: { session },
      error,
    } = await supabase.auth.getSession();

    if (error) throw error;

    return { session, error: null };
  } catch (error) {
    console.error("❌ Erro ao obter sessão:", error);
    return { session: null, error };
  }
}

/**
 * Recuperação de senha (envia email com link)
 */
export async function resetPassword(email: string) {
  try {
    const { data, error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: "mrpkunew://auth/reset-password",
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao enviar email de recuperação:", error);
    return { data: null, error };
  }
}

/**
 * Atualizar senha do usuário
 */
export async function updatePassword(newPassword: string) {
  try {
    const { data, error } = await supabase.auth.updateUser({
      password: newPassword,
    });

    if (error) throw error;

    return { data, error: null };
  } catch (error) {
    console.error("❌ Erro ao atualizar senha:", error);
    return { data: null, error };
  }
}
