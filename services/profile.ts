import { supabase } from "./supabase";

export interface Profile {
  id: string;
  full_name: string | null;
  avatar_url: string | null;
  created_at: string;
  updated_at: string;
}

export interface UpdateProfileData {
  full_name?: string;
  avatar_url?: string;
}

/**
 * Busca o perfil de um usuário pelo ID
 */
export async function getProfile(userId: string) {
  try {
    const { data, error } = await supabase
      .from("profiles")
      .select("*")
      .eq("id", userId)
      .single();

    if (error) throw error;

    return { data: data as Profile, error: null };
  } catch (error) {
    console.error("❌ Erro ao buscar perfil:", error);
    return { data: null, error };
  }
}

/**
 * Atualiza o perfil de um usuário
 */
export async function updateProfile(
  userId: string,
  updates: UpdateProfileData
) {
  try {
    const { data, error } = await supabase
      .from("profiles")
      .update(updates)
      .eq("id", userId)
      .select()
      .single();

    if (error) throw error;

    return { data: data as Profile, error: null };
  } catch (error) {
    console.error("❌ Erro ao atualizar perfil:", error);
    return { data: null, error };
  }
}

/**
 * Cria um perfil manualmente (geralmente feito automaticamente pelo trigger)
 * Útil para casos onde o trigger falha ou para testes
 */
export async function createProfile(
  userId: string,
  profileData: UpdateProfileData
) {
  try {
    const { data, error } = await supabase
      .from("profiles")
      .insert({
        id: userId,
        ...profileData,
      })
      .select()
      .single();

    if (error) throw error;

    return { data: data as Profile, error: null };
  } catch (error) {
    console.error("❌ Erro ao criar perfil:", error);
    return { data: null, error };
  }
}

/**
 * Deleta o perfil de um usuário
 */
export async function deleteProfile(userId: string) {
  try {
    const { error } = await supabase.from("profiles").delete().eq("id", userId);

    if (error) throw error;

    return { error: null };
  } catch (error) {
    console.error("❌ Erro ao deletar perfil:", error);
    return { error };
  }
}
