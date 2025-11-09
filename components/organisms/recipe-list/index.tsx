import { useLayoutEffect, useState } from "react";
import { ScrollView, Text, TouchableOpacity, View } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Feather } from "@expo/vector-icons";
import { useNavigation, useRoute } from "@react-navigation/native";
import recipes from "@/recipes.json";
import { RecipeNavigatorRoutesProps } from "@/types/RecipeRoute/recipe-route";
import { Recipe } from "@/types/RecipeTypes/recipe";
import { RecipeCard } from "../recipe-card/index";
import { styles } from "./styles";

export function RecipeLists() {
  const [list, setList] = useState<Recipe[]>([]);
  const route = useRoute();
  const { category } = route.params as { category: string };
  const navigation = useNavigation<RecipeNavigatorRoutesProps>();

  const result = recipes.find((item) => item.category === category);

  useLayoutEffect(() => {
    if (result?.recipes) {
      setList(result.recipes as unknown as Recipe[]);
    }
  }, [result]);

  function handleGoBack() {
    navigation.goBack();
  }

  return (
    <SafeAreaView style={styles.container}>
      <TouchableOpacity onPress={handleGoBack} style={styles.backButton}>
        <Feather name="arrow-left" size={24} color="#888" />
        <Text style={styles.backText}>Retornar</Text>
      </TouchableOpacity>
      <ScrollView style={styles.scrollView}>
        {list?.map((item, index) => (
          <View key={item.id} style={styles.itemContainer}>
            {index === 0 ? (
              <RecipeCard ad={true} />
            ) : (
              <RecipeCard recipe={item} />
            )}
          </View>
        ))}
      </ScrollView>
    </SafeAreaView>
  );
}
