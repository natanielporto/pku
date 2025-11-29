import React, { useEffect, useState } from "react";
import { FlatList, StyleSheet, Text, TouchableOpacity } from "react-native";
import { useRouter } from "expo-router";
import { View } from "@/components/Themed";
import { CategoryCard } from "@/components/organisms/category-card";
import recipesData from "../../recipes.json";

type Category = {
  category: string;
  image: string;
  recipes: unknown[];
};

export default function Home() {
  const [categories, setCategories] = useState<Category[]>([]);
  const router = useRouter();

  useEffect(() => {
    setCategories(recipesData as Category[]);
  }, []);

  return (
    <View style={styles.wrapper}>
      <TouchableOpacity
        style={styles.testButton}
        onPress={() =>
          router.push({ pathname: "/(tabs)/test-supabase" as any })
        }
      >
        <Text style={styles.testButtonText}>🧪 Testar Conexão Supabase</Text>
      </TouchableOpacity>
      <FlatList
        data={categories}
        keyExtractor={(item) => item.category}
        contentContainerStyle={styles.container}
        renderItem={({ item }) => (
          <View style={styles.itemContainer}>
            <CategoryCard categoryData={item} />
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  wrapper: {
    flex: 1,
  },
  testButton: {
    backgroundColor: "#007AFF",
    padding: 12,
    margin: 8,
    borderRadius: 8,
    alignItems: "center",
  },
  testButtonText: {
    color: "#fff",
    fontSize: 14,
    fontWeight: "600",
  },
  container: {
    paddingTop: 8,
    backgroundColor: "#f0f0f0",
  },
  itemContainer: {
    marginBottom: 8,
  },
});
