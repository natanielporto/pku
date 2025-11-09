import React, { useEffect, useState } from "react";
import { FlatList, StyleSheet } from "react-native";
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

  useEffect(() => {
    setCategories(recipesData as Category[]);
  }, []);

  return (
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
  );
}

const styles = StyleSheet.create({
  container: {
    paddingTop: 8,
    backgroundColor: "white",
  },
  itemContainer: {
    marginBottom: 8,
  },
});
