import React, { useState } from "react";
import {
  ActivityIndicator,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { useColorScheme } from "@/components/useColorScheme";
import Colors from "@/constants/Colors";
import {
  checkSupabaseConfig,
  testSupabaseConnection,
} from "@/services/test-supabase";

export default function TestSupabaseScreen() {
  const [testResult, setTestResult] = useState<{
    success: boolean;
    message: string;
    data?: unknown;
  } | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const colorScheme = useColorScheme();
  const colors = Colors[colorScheme ?? "light"];

  const config = checkSupabaseConfig();

  const handleTest = async () => {
    setIsLoading(true);
    setTestResult(null);
    try {
      const result = await testSupabaseConnection();
      setTestResult(result);
    } catch (error) {
      setTestResult({
        success: false,
        message: `❌ Erro inesperado: ${error instanceof Error ? error.message : "Erro desconhecido"}`,
        data: error,
      });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <ScrollView
      style={[styles.container, { backgroundColor: colors.background }]}
    >
      <View style={styles.content}>
        <Text style={[styles.title, { color: colors.text }]}>
          Teste de Conexão Supabase
        </Text>

        {/* Configuração */}
        <View style={[styles.section, { backgroundColor: colors.background }]}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>
            Configuração
          </Text>
          <Text style={[styles.text, { color: colors.text }]}>
            {config.message}
          </Text>
          {config.url && (
            <Text style={[styles.smallText, { color: colors.tabIconDefault }]}>
              URL: {config.url.substring(0, 30)}...
            </Text>
          )}
          {config.key && (
            <Text style={[styles.smallText, { color: colors.tabIconDefault }]}>
              Key: {config.key.substring(0, 20)}...
            </Text>
          )}
        </View>

        {/* Botão de Teste */}
        <TouchableOpacity
          style={[
            styles.button,
            {
              backgroundColor: colors.tint,
              opacity: isLoading ? 0.6 : 1,
            },
          ]}
          onPress={handleTest}
          disabled={isLoading || !config.hasUrl || !config.hasKey}
        >
          {isLoading ? (
            <ActivityIndicator color="#fff" />
          ) : (
            <Text style={styles.buttonText}>Testar Conexão</Text>
          )}
        </TouchableOpacity>

        {/* Resultado */}
        {testResult && (
          <View
            style={[
              styles.resultContainer,
              {
                backgroundColor: testResult.success
                  ? "rgba(0, 255, 0, 0.1)"
                  : "rgba(255, 0, 0, 0.1)",
                borderColor: testResult.success ? "#00ff00" : "#ff0000",
              },
            ]}
          >
            <Text
              style={[
                styles.resultText,
                {
                  color: testResult.success ? "#00aa00" : "#aa0000",
                },
              ]}
            >
              {testResult.message}
            </Text>
            {testResult.data !== undefined && (
              <Text
                style={[styles.smallText, { color: colors.tabIconDefault }]}
              >
                {String(JSON.stringify(testResult.data, null, 2))}
              </Text>
            )}
          </View>
        )}

        {/* Instruções */}
        <View style={[styles.section, { backgroundColor: colors.background }]}>
          <Text style={[styles.sectionTitle, { color: colors.text }]}>
            Como configurar
          </Text>
          <Text style={[styles.text, { color: colors.text }]}>
            1. Adicione as credenciais do Supabase no arquivo .env:
          </Text>
          <Text style={[styles.codeText, { color: colors.tabIconDefault }]}>
            {`SUPA_URL=https://seu-projeto.supabase.co
SUPA_ANON_KEY=sua-chave-anon-aqui
SUPA_KEY=sua-chave-de-servico-aqui`}
          </Text>
          <Text style={[styles.text, { color: colors.text, marginTop: 10 }]}>
            2. O app.config.js já está configurado para ler do .env
          </Text>
          <Text style={[styles.text, { color: colors.text, marginTop: 5 }]}>
            3. Reinicie o servidor Expo após alterar o .env
          </Text>
        </View>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  content: {
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    marginBottom: 20,
  },
  section: {
    marginBottom: 20,
    padding: 15,
    borderRadius: 8,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: "600",
    marginBottom: 10,
  },
  text: {
    fontSize: 14,
    marginBottom: 5,
  },
  smallText: {
    fontSize: 12,
    marginTop: 5,
  },
  codeText: {
    fontSize: 12,
    fontFamily: "monospace",
    marginTop: 5,
    padding: 10,
    backgroundColor: "rgba(0,0,0,0.1)",
    borderRadius: 4,
  },
  button: {
    padding: 15,
    borderRadius: 8,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 20,
    minHeight: 50,
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "600",
  },
  resultContainer: {
    padding: 15,
    borderRadius: 8,
    borderWidth: 2,
    marginBottom: 20,
  },
  resultText: {
    fontSize: 16,
    fontWeight: "600",
    marginBottom: 10,
  },
});
