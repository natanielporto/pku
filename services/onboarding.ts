import AsyncStorage from "@react-native-async-storage/async-storage";

const ONBOARDING_COMPLETED_KEY = "@mrpku:onboarding_completed";

/**
 * Verifica se o usuário já completou o onboarding/cadastro
 */
export async function isOnboardingCompleted(): Promise<boolean> {
  try {
    const value = await AsyncStorage.getItem(ONBOARDING_COMPLETED_KEY);
    return value === "true";
  } catch (error) {
    console.error("Erro ao verificar onboarding:", error);
    return false;
  }
}

/**
 * Marca o onboarding como completo
 */
export async function setOnboardingCompleted(): Promise<void> {
  try {
    await AsyncStorage.setItem(ONBOARDING_COMPLETED_KEY, "true");
  } catch (error) {
    console.error("Erro ao salvar onboarding:", error);
  }
}

/**
 * Reseta o onboarding (útil para testes)
 */
export async function resetOnboarding(): Promise<void> {
  try {
    await AsyncStorage.removeItem(ONBOARDING_COMPLETED_KEY);
  } catch (error) {
    console.error("Erro ao resetar onboarding:", error);
  }
}

/**
 * Limpa todo o AsyncStorage (útil para testes e desenvolvimento)
 * ATENÇÃO: Isso remove TODOS os dados salvos no AsyncStorage!
 */
export async function clearAllStorage(): Promise<void> {
  try {
    await AsyncStorage.clear();
    console.log("AsyncStorage limpo com sucesso");
  } catch (error) {
    console.error("Erro ao limpar AsyncStorage:", error);
  }
}
