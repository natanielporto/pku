import React, { useState } from "react";
import { Controller, useForm } from "react-hook-form";
import { useTranslation } from "react-i18next";
import {
  ActivityIndicator,
  KeyboardAvoidingView,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Feather } from "@expo/vector-icons";
import FontAwesome from "@expo/vector-icons/FontAwesome";
import { zodResolver } from "@hookform/resolvers/zod";
import { useRouter } from "expo-router";
import { OnboardingFormData, onboardingSchema } from "@/schemas/onboarding";
import { setOnboardingCompleted } from "@/services/onboarding";

export default function OnboardingScreen() {
  const router = useRouter();
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);

  const {
    control,
    handleSubmit,
    formState: { errors, isValid },
  } = useForm<OnboardingFormData>({
    resolver: zodResolver(onboardingSchema),
    mode: "onChange", // Valida em tempo real
  });

  async function onSubmit(data: OnboardingFormData) {
    setIsLoading(true);
    try {
      // Aqui você pode salvar o nome do usuário e senha se necessário
      // Por enquanto, apenas marca o onboarding como completo
      await setOnboardingCompleted();

      // Navega para a tela principal
      router.replace("/(tabs)/home");
    } catch (error) {
      console.error("Erro ao completar onboarding:", error);
    } finally {
      setIsLoading(false);
    }
  }

  return (
    <SafeAreaView style={styles.container}>
      <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : "height"}
        style={styles.keyboardView}
      >
        <ScrollView
          contentContainerStyle={styles.scrollContent}
          keyboardShouldPersistTaps="handled"
        >
          <View style={styles.content}>
            <Text style={styles.title}>{t("onboarding.welcome")}</Text>
            <Text style={styles.subtitle}>{t("onboarding.subtitle")}</Text>

            <TouchableOpacity style={styles.socialButton}>
              <FontAwesome name="google" size={24} color="white" />
              <Text style={{ color: "white" }}>{t("onboarding.google")}</Text>
            </TouchableOpacity>
            <TouchableOpacity style={{ ...styles.socialButton, marginTop: 16 }}>
              <FontAwesome name="facebook-square" size={24} color="white" />
              <Text style={{ color: "white" }}>{t("onboarding.facebook")}</Text>
            </TouchableOpacity>

            <View style={styles.form}>
              <Text style={styles.label}>{t("onboarding.nameLabel")}</Text>
              <Controller
                control={control}
                name="name"
                render={({ field: { onChange, onBlur, value } }) => (
                  <>
                    <TextInput
                      style={[styles.input, errors.name && styles.inputError]}
                      placeholder={t("onboarding.usernamePlaceholder")}
                      value={value}
                      onChangeText={onChange}
                      onBlur={onBlur}
                      autoCapitalize="words"
                      autoFocus
                    />
                    {errors.name && (
                      <Text style={styles.errorText}>
                        {errors.name.message}
                      </Text>
                    )}
                  </>
                )}
              />

              <Controller
                control={control}
                name="password"
                render={({ field: { onChange, onBlur, value } }) => (
                  <>
                    <View
                      style={[
                        styles.passwordContainer,
                        errors.password && styles.inputError,
                      ]}
                    >
                      <TextInput
                        style={styles.passwordInput}
                        placeholder={t("onboarding.passwordPlaceholder")}
                        value={value}
                        onChangeText={onChange}
                        onBlur={onBlur}
                        secureTextEntry={!showPassword}
                        autoCapitalize="none"
                        autoCorrect={false}
                        textContentType="password"
                      />
                      <TouchableOpacity
                        style={styles.eyeIcon}
                        onPress={() => setShowPassword(!showPassword)}
                      >
                        <Feather
                          name={showPassword ? "eye" : "eye-off"}
                          size={20}
                          color="#666"
                        />
                      </TouchableOpacity>
                    </View>
                    {errors.password && (
                      <Text style={styles.errorText}>
                        {errors.password.message}
                      </Text>
                    )}
                    {/* Indicadores de validação da senha */}
                    {value && (
                      <View style={styles.passwordRules}>
                        <PasswordRule
                          isValid={value.length >= 8}
                          text={t("onboarding.passwordRule1")}
                        />
                        <PasswordRule
                          isValid={/[A-Z]/.test(value)}
                          text={t("onboarding.passwordRule2")}
                        />
                        <PasswordRule
                          isValid={/[a-z]/.test(value)}
                          text={t("onboarding.passwordRule3")}
                        />
                        <PasswordRule
                          isValid={/[0-9]/.test(value)}
                          text={t("onboarding.passwordRule4")}
                        />
                        <PasswordRule
                          isValid={/[^A-Za-z0-9]/.test(value)}
                          text={t("onboarding.passwordRule5")}
                        />
                      </View>
                    )}
                  </>
                )}
              />
            </View>

            <TouchableOpacity
              style={[styles.button, !isValid && styles.buttonDisabled]}
              onPress={handleSubmit(onSubmit)}
              disabled={!isValid || isLoading}
            >
              {isLoading ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <Text style={styles.buttonText}>
                  {t("onboarding.continue")}
                </Text>
              )}
            </TouchableOpacity>
          </View>
        </ScrollView>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f0f0f0",
  },
  keyboardView: {
    flex: 1,
  },
  scrollContent: {
    flexGrow: 1,
    justifyContent: "center",
    padding: 20,
  },
  content: {
    width: "100%",
    maxWidth: 400,
    alignSelf: "center",
  },
  title: {
    fontSize: 32,
    fontWeight: "bold",
    color: "#0C6941",
    textAlign: "center",
    marginBottom: 12,
  },
  subtitle: {
    fontSize: 16,
    color: "#666",
    textAlign: "center",
    marginBottom: 40,
  },
  form: {
    marginVertical: 30,
  },
  label: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
    marginBottom: 8,
  },
  input: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 16,
    fontSize: 16,
    borderWidth: 1,
    borderColor: "#e0e0e0",
  },
  passwordContainer: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: "#fff",
    borderRadius: 12,
    borderWidth: 1,
    borderColor: "#e0e0e0",
    marginTop: 16,
  },
  passwordInput: {
    flex: 1,
    padding: 16,
    fontSize: 16,
  },
  eyeIcon: {
    padding: 16,
    paddingLeft: 8,
  },
  button: {
    backgroundColor: "#0C6941",
    borderRadius: 12,
    padding: 16,
    alignItems: "center",
    justifyContent: "center",
    minHeight: 52,
  },
  buttonDisabled: {
    backgroundColor: "#ccc",
    opacity: 0.6,
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "600",
  },
  socialButton: {
    borderRadius: 12,
    padding: 16,
    display: "flex",
    flexDirection: "row",
    gap: 16,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "#0C6941",
    color: "#fff",
  },
  inputError: {
    borderColor: "#d32f2f",
    borderWidth: 1,
  },
  errorText: {
    color: "#d32f2f",
    fontSize: 12,
    marginTop: 4,
    marginLeft: 4,
  },
  passwordRules: {
    marginTop: 8,
    gap: 4,
  },
  passwordRule: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
  },
  passwordRuleText: {
    fontSize: 12,
    color: "#666",
  },
  passwordRuleTextValid: {
    color: "#0C6941",
  },
});

// Componente auxiliar para mostrar regras de senha
function PasswordRule({ isValid, text }: { isValid: boolean; text: string }) {
  return (
    <View style={styles.passwordRule}>
      <Feather
        name={isValid ? "check-circle" : "circle"}
        size={14}
        color={isValid ? "#0C6941" : "#ccc"}
      />
      <Text
        style={[
          styles.passwordRuleText,
          isValid && styles.passwordRuleTextValid,
        ]}
      >
        {text}
      </Text>
    </View>
  );
}
