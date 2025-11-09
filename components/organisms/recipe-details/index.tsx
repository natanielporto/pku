import { useTranslation } from "react-i18next";
import { Image, ScrollView, Text, TouchableOpacity, View } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Feather } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { FullRecipe } from "@/types/RecipeTypes/recipe";
import { Title } from "../../atoms/Title/Title";
import { Table } from "../../molecules/Table";
import { Chart } from "../pie-chart";
import { styles } from "./styles";

type Props = {
  readonly recipe: FullRecipe;
  readonly category: string;
};

export function RecipeDetail({ recipe, category }: Props) {
  const router = useRouter();
  const { t } = useTranslation();

  function handleGoBack() {
    router.push({
      pathname: "/(tabs)/recipe-list",
      params: { category },
    });
  }

  return (
    <SafeAreaView style={styles.safeArea}>
      {recipe ? (
        <View style={styles.container}>
          <View style={styles.headerSection}>
            <View style={styles.headerRow}>
              <TouchableOpacity
                onPress={handleGoBack}
                style={styles.backButton}
              >
                <Feather name="arrow-left" size={16} color="#888" />
                <Title title={t(`categories.${category}`)} />
              </TouchableOpacity>
            </View>
            <View style={styles.imageContainer}>
              <Image
                source={{ uri: recipe.image || "" }}
                style={styles.image}
              />
            </View>
          </View>
          <ScrollView style={styles.scrollView}>
            <Title title="Ingredientes" underline />
            <View style={styles.ingredientsContainer}>
              {recipe.ingredients.map((item) => (
                <Text style={styles.text} key={item}>
                  {item}
                </Text>
              ))}
            </View>

            <View style={styles.sectionContainer} />

            <View>
              <Title title={"Rendimento"} underline />
              <View style={styles.servingsContainer}>
                <Text>{recipe.servings}</Text>
              </View>
            </View>

            <View style={styles.sectionContainer} />

            <Title title="Modo de preparo" underline />
            <View style={styles.preparationContainer}>
              {recipe.preparation.map((item) => (
                <Text style={styles.text} key={item}>
                  {item}
                </Text>
              ))}
            </View>
            <View style={styles.tableContainer}>
              <Table nutritionalInformation={recipe.nutritionalInformation} />
            </View>
            <View style={styles.chartContainer}>
              <Chart graphInformation={recipe.graphInformation} />
            </View>
          </ScrollView>
        </View>
      ) : null}
    </SafeAreaView>
  );
}
