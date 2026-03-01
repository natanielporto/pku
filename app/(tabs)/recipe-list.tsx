import React from "react";
import { useTranslation } from "react-i18next";
import {
  ActivityIndicator,
  FlatList,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { Feather } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Title } from "@/components/atoms/Title/Title";
import { RecipeCard } from "@/components/organisms/recipe-card";
import { useRecipesByCategory } from "@/hooks/useRecipes";
import Colors from "@/constants/Colors";

export default function RecipeListScreen() {
  const { category } = useLocalSearchParams<{ category: string }>();
  const router = useRouter();
  const { t } = useTranslation();
  const {
    data: recipes = [],
    isLoading,
    error,
  } = useRecipesByCategory(category || "");

  function handleGoBack() {
    router.back();
  }

  if (isLoading) {
    return (
      <View style={styles.container}>
        <View style={styles.headerRow}>
          <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
            <Feather name="arrow-left" size={16} color={Colors.gray.text} />
            <Title title={t(`tabs.home`)} />
          </TouchableOpacity>
        </View>
        <View style={styles.centerContainer}>
          <ActivityIndicator size="large" color={Colors.base.blue} />
          <Text style={styles.loadingText}>{t("home.loadingRecipes")}</Text>
        </View>
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.container}>
        <View style={styles.headerRow}>
          <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
            <Feather name="arrow-left" size={16} color={Colors.gray.text} />
            <Title title={t(`tabs.home`)} />
          </TouchableOpacity>
        </View>
        <View style={styles.centerContainer}>
          <Text style={styles.errorText}>
            Erro ao carregar receitas:{" "}
            {error instanceof Error ? error.message : "Erro desconhecido"}
          </Text>
        </View>
      </View>
    );
  }

  return (
    <View>
      <View style={styles.headerRow}>
        <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
          <Feather name="arrow-left" size={16} color={Colors.gray.text} />
          <Title title={t(`tabs.home`)} />
        </TouchableOpacity>
      </View>
      <FlatList
        data={recipes}
        style={styles.flatList}
        keyExtractor={(item) => String(item.id)}
        renderItem={({ item }) => (
          <View style={styles.itemContainer}>
            <RecipeCard recipe={item} category={category} />
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Colors.gray.medium,
  },
  centerContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    padding: 20,
  },
  loadingText: {
    marginTop: 12,
    fontSize: 16,
    color: Colors.gray.dark,
  },
  errorText: {
    fontSize: 16,
    color: Colors.base.red,
    textAlign: "center",
  },
  backText: {
    color: Colors.gray.text,
  },
  itemContainer: {
    marginBottom: 8,
  },
  headerRow: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: 16,
    paddingLeft: 16,
  },
  backButton: {
    marginRight: 4,
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
  },
  flatList: {
    marginBottom: 54,
  },
});
