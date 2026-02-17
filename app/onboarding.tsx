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
import FontAwesome from "@expo/vector-icons/FontAwesome";
import { zodResolver } from "@hookform/resolvers/zod";
import { OnboardingFormData, onboardingSchema } from "@/schemas/onboarding";
import {
  signInWithEmail,
  signInWithFacebook,
  signInWithGoogle,
  signUpWithEmail,
} from "@/services/auth";
import { PasswordRule } from "@/components/molecules/PasswordRule";

export default function OnboardingScreen() {
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = useState(false);
  const [isLoadingOAuth, setIsLoadingOAuth] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [isSignIn, setIsSignIn] = useState(false); // Toggle entre login e cadastro

  const {
    control,
    handleSubmit,
    formState: { errors, isValid },
  } = useForm<OnboardingFormData>({
    resolver: zodResolver(onboardingSchema),
    mode: "onChange", // Valida em tempo real
  });

  async function handleGoogleSignIn() {
    setIsLoadingOAuth(true);
    try {
      const { error } = await signInWithGoogle();

      if (error) {
        Alert.alert(
          t("onboarding.error.error"),
          t("onboarding.error.google")
        );
        console.error(error);
      }
      // O redirecionamento é feito automaticamente pelo AuthContext
    } catch (error) {
      console.error(t("onboarding.error.googleUnexpected"), error);
      Alert.alert(t("onboarding.error.error"), t("onboarding.error.googleUnexpected"));
    } finally {
      setIsLoadingOAuth(false);
    }
  }

  async function handleFacebookSignIn() {
    setIsLoadingOAuth(true);
    try {
      const { error } = await signInWithFacebook();

      if (error) {
        Alert.alert(
          t("onboarding.error.error"),
          t("onboarding.error.facebook")
        );
        console.error(error);
      }
      // O redirecionamento é feito automaticamente pelo AuthContext
    } catch (error) {
      console.error(t("onboarding.error.facebookUnexpected"), error);
      Alert.alert(t("onboarding.error.error"), t("onboarding.error.facebookUnexpected"));
    } finally {
      setIsLoadingOAuth(false);
    }
  }

  async function onSubmit(data: OnboardingFormData) {
    setIsLoading(true);
    try {
      let result;

      if (isSignIn) {
        // Login com email e senha
        result = await signInWithEmail(data.email, data.password);
      } else {
        // Cadastro com email e senha
        result = await signUpWithEmail(data.email, data.password);
      }

      if (result.error) {
        const errorMessage = isSignIn
          ? (t("onboarding.error.signIn"))
          : (t("onboarding.error.signUp"));

        Alert.alert(t("onboarding.error.error"), errorMessage);
        console.error(result.error);
        return;
      }

      // O redirecionamento é feito automaticamente pelo AuthContext
      if (!isSignIn) {
        Alert.alert(
          t("onboarding.success.success"),
          t("onboarding.success.signUp")
        );
      }
    } catch (error) {
      console.error(t("onboarding.error.authenticationError"), error);
      Alert.alert(t("onboarding.error.error"), t("onboarding.error.authenticationErrorDescription"));
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

            <TouchableOpacity
              style={styles.socialButton}
              onPress={handleGoogleSignIn}
              disabled={isLoadingOAuth}
            >
              {isLoadingOAuth ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <>
                  <FontAwesome name="google" size={24} color="white" />
                  <Text style={{ color: "white" }}>
                    {t("onboarding.google")}
                  </Text>
                </>
              )}
            </TouchableOpacity>

            <TouchableOpacity
              style={{ ...styles.socialButton, marginTop: 16 }}
              onPress={handleFacebookSignIn}
              disabled={isLoadingOAuth}
            >
              {isLoadingOAuth ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <>
                  <FontAwesome name="facebook-square" size={24} color="white" />
                  <Text style={{ color: "white" }}>
                    {t("onboarding.facebook")}
                  </Text>
                </>
              )}
            </TouchableOpacity>

            <View style={styles.form}>
              <Text style={styles.formLabel}>{t("onboarding.formLabel")}</Text>

              {/* Campo de Email */}
              <Text style={styles.label}>{t("onboarding.emailLabel")}</Text>
              <Controller
                control={control}
                name="email"
                render={({ field: { onChange, onBlur, value } }) => (
                  <>
                    <TextInput
                      style={[styles.input, errors.email && styles.inputError]}
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
                    {errors.email && (
                      <Text style={styles.errorText}>
                        {errors.email.message}
                      </Text>
                    )}
                  </>
                )}
              />

              {/* Campo de Senha */}
              <Text style={[styles.label, { marginTop: 16, marginBottom: 0 }]}>
                {t("onboarding.passwordLabel")}
              </Text>
              <Controller
                control={control}
                name="password"
                render={({ field: { onChange, onBlur, value } }) => (
                  <>
                    <View
                      style={[
                        styles.passwordContainer,
                        { marginTop: 8 },
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
                  {isSignIn ? t("onboarding.signIn") : t("onboarding.signUp")}
                </Text>
              )}
            </TouchableOpacity>

            <TouchableOpacity
              style={styles.toggleButton}
              onPress={() => setIsSignIn(!isSignIn)}
              disabled={isLoading}
            >
              <Text style={styles.toggleButtonText}>
                {isSignIn
                  ? t("onboarding.toggleSignUp")
                  : t("onboarding.toggleSignIn")}
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
    marginVertical: 30,
  },
  formLabel: {
    fontSize: 14,
    fontWeight: "600",
    color: "#666",
    marginBottom: 16,
    textAlign: "center",
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
  }
});

