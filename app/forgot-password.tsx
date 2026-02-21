import React, { useState } from "react";
import { Controller, useForm } from "react-hook-form";
import { useTranslation } from "react-i18next";
import {
  ActivityIndicator,
  Alert,
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
import { zodResolver } from "@hookform/resolvers/zod";
import { router } from "expo-router";
import {
  ForgotPasswordStep1Data,
  ForgotPasswordStep2Data,
  forgotPasswordStep1Schema,
  forgotPasswordStep2Schema,
} from "@/schemas/onboarding";
import { resetPassword, updatePassword, verifyPasswordResetOTP } from "@/services/auth";
import { PasswordRule } from "@/components/molecules/PasswordRule";

export default function ForgotPasswordScreen() {
  const { t } = useTranslation();
  const [step, setStep] = useState<1 | 2>(1);
  const [email, setEmail] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);

  // Form para o Passo 1 (Email)
  const formStep1 = useForm<ForgotPasswordStep1Data>({
    resolver: zodResolver(forgotPasswordStep1Schema),
    mode: "onChange",
  });

  // Form para o Passo 2 (Código + Nova Senha)
  const formStep2 = useForm<ForgotPasswordStep2Data>({
    resolver: zodResolver(forgotPasswordStep2Schema),
    mode: "onChange",
  });

  const password = formStep2.watch("password");

  async function onSendCode(data: ForgotPasswordStep1Data) {
    setIsLoading(true);
    try {
      const { error } = await resetPassword(data.email);

      if (error) {
        Alert.alert(t("onboarding.error.error"), t("onboarding.error.email"));
        console.error(error);
        return;
      }

      setEmail(data.email);
      setStep(2);
      Alert.alert(
        t("onboarding.success.success"),
        t("onboarding.forgotPasswordScreen.codeSent")
      );
    } catch (error) {
      console.error(error);
      Alert.alert(
        t("onboarding.error.error"),
        t("onboarding.error.authenticationErrorDescription")
      );
    } finally {
      setIsLoading(false);
    }
  }

  async function onResetPassword(data: ForgotPasswordStep2Data) {
    setIsLoading(true);
    try {
      // 1. Verificar o OTP
      const { error: verifyError } = await verifyPasswordResetOTP(email, data.token);

      if (verifyError) {
        Alert.alert(t("onboarding.error.error"), t("onboarding.forgotPasswordScreen.invalidCode"));
        console.error(verifyError);
        return;
      }

      // 2. Atualizar a senha (o verifyOTP já cria uma sessão de "recovery")
      const { error: updateError } = await updatePassword(data.password);

      if (updateError) {
        Alert.alert(t("onboarding.error.error"), t("onboarding.error.authenticationErrorDescription"));
        console.error(updateError);
        return;
      }

      Alert.alert(
        t("onboarding.success.success"),
        t("onboarding.success.forgotPassword"),
        [{ text: "OK", onPress: () => router.replace("/onboarding") }]
      );
    } catch (error) {
      console.error(error);
      Alert.alert(
        t("onboarding.error.error"),
        t("onboarding.error.authenticationErrorDescription")
      );
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
            <Text style={styles.title}>{t("onboarding.forgotPasswordScreen.title")}</Text>
            <Text style={styles.subtitle}>
              {step === 1 
                ? t("onboarding.forgotPasswordScreen.subtitle") 
                : t("onboarding.forgotPasswordScreen.subtitleStep2")}
            </Text>

            <View style={styles.form}>
              {step === 1 ? (
                /* PASSO 1: EMAIL */
                <>
                  <Text style={styles.label}>{t("onboarding.emailLabel")}</Text>
                  <Controller
                    control={formStep1.control}
                    name="email"
                    render={({ field: { onChange, onBlur, value } }) => (
                      <>
                        <TextInput
                          style={[styles.input, formStep1.formState.errors.email && styles.inputError]}
                          placeholder={t("onboarding.emailPlaceholder")}
                          value={value}
                          onChangeText={onChange}
                          onBlur={onBlur}
                          autoCapitalize="none"
                          autoCorrect={false}
                          keyboardType="email-address"
                          textContentType="emailAddress"
                          autoFocus
                        />
                        {formStep1.formState.errors.email && (
                          <Text style={styles.errorText}>
                            {formStep1.formState.errors.email.message}
                          </Text>
                        )}
                      </>
                    )}
                  />
                </>
              ) : (
                /* PASSO 2: CÓDIGO + SENHA */
                <>
                  {/* Campo de Código */}
                  <Text style={styles.label}>{t("onboarding.forgotPasswordScreen.codeLabel")}</Text>
                  <Controller
                    control={formStep2.control}
                    name="token"
                    render={({ field: { onChange, onBlur, value } }) => (
                      <>
                        <TextInput
                          style={[styles.input, formStep2.formState.errors.token && styles.inputError]}
                          placeholder={t("onboarding.forgotPasswordScreen.codePlaceholder")}
                          value={value}
                          onChangeText={onChange}
                          onBlur={onBlur}
                          keyboardType="number-pad"
                          maxLength={6}
                          autoFocus
                        />
                        {formStep2.formState.errors.token && (
                          <Text style={styles.errorText}>
                            {formStep2.formState.errors.token.message}
                          </Text>
                        )}
                      </>
                    )}
                  />

                  {/* Campo de Nova Senha */}
                  <Text style={[styles.label, { marginTop: 16 }]}>
                    {t("onboarding.forgotPasswordScreen.newPasswordLabel")}
                  </Text>
                  <Controller
                    control={formStep2.control}
                    name="password"
                    render={({ field: { onChange, onBlur, value } }) => (
                      <>
                        <View
                          style={[
                            styles.passwordContainer,
                            formStep2.formState.errors.password && styles.inputError,
                          ]}
                        >
                          <TextInput
                            style={styles.passwordInput}
                            placeholder={t("onboarding.forgotPasswordScreen.newPasswordPlaceholder")}
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
                        {formStep2.formState.errors.password && (
                          <Text style={styles.errorText}>
                            {formStep2.formState.errors.password.message}
                          </Text>
                        )}
                        {/* Regras da Senha */}
                        {Boolean(value) && (
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

                  {/* Campo de Confirmar Senha */}
                  <Text style={[styles.label, { marginTop: 16 }]}>
                    {t("onboarding.forgotPasswordScreen.confirmPasswordLabel")}
                  </Text>
                  <Controller
                    control={formStep2.control}
                    name="confirmPassword"
                    render={({ field: { onChange, onBlur, value } }) => (
                      <>
                        <View
                          style={[
                            styles.passwordContainer,
                            formStep2.formState.errors.confirmPassword && styles.inputError,
                          ]}
                        >
                          <TextInput
                            style={styles.passwordInput}
                            placeholder={t("onboarding.forgotPasswordScreen.confirmPasswordPlaceholder")}
                            value={value}
                            onChangeText={onChange}
                            onBlur={onBlur}
                            secureTextEntry={!showConfirmPassword}
                            autoCapitalize="none"
                            autoCorrect={false}
                            textContentType="password"
                          />
                          <TouchableOpacity
                            style={styles.eyeIcon}
                            onPress={() => setShowConfirmPassword(!showConfirmPassword)}
                          >
                            <Feather
                              name={showConfirmPassword ? "eye" : "eye-off"}
                              size={20}
                              color="#666"
                            />
                          </TouchableOpacity>
                        </View>
                        {formStep2.formState.errors.confirmPassword && (
                          <Text style={styles.errorText}>
                            {formStep2.formState.errors.confirmPassword.message}
                          </Text>
                        )}
                      </>
                    )}
                  />
                </>
              )}
            </View>

            <TouchableOpacity
              style={[
                styles.button, 
                ((step === 1 && !formStep1.formState.isValid) || 
                 (step === 2 && !formStep2.formState.isValid) || 
                 isLoading) && styles.buttonDisabled
              ]}
              onPress={step === 1 
                ? formStep1.handleSubmit(onSendCode) 
                : formStep2.handleSubmit(onResetPassword)}
              disabled={isLoading || (step === 1 && !formStep1.formState.isValid) || (step === 2 && !formStep2.formState.isValid)}
            >
              {isLoading ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <Text style={styles.buttonText}>
                  {step === 1 
                    ? t("onboarding.forgotPasswordScreen.submitStep1") 
                    : t("onboarding.forgotPasswordScreen.submitStep2")}
                </Text>
              )}
            </TouchableOpacity>

            <TouchableOpacity
              style={styles.toggleButton}
              onPress={() => step === 1 ? router.back() : setStep(1)}
              disabled={isLoading}
            >
              <Text style={styles.toggleButtonText}>
                {t("onboarding.forgotPasswordScreen.back")}
              </Text>
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
    marginBottom: 30,
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
  toggleButton: {
    marginTop: 16,
    padding: 12,
    alignItems: "center",
  },
  toggleButtonText: {
    color: "#0C6941",
    fontSize: 14,
    fontWeight: "600",
  },
  inputError: {
    borderColor: "#d32f2f",
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
});