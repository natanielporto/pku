import { useEffect, useRef, useState } from "react";
import { useTranslation } from "react-i18next";
import {
  Animated,
  Image,
  ScrollView,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
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
  const scrollViewRef = useRef<ScrollView>(null);
  const [isImageLoading, setIsImageLoading] = useState(true);
  const shimmerAnim = useRef(new Animated.Value(0)).current;

  // Garante que o scroll comece no topo quando a receita mudar
  useEffect(() => {
    scrollViewRef.current?.scrollTo({ y: 0, animated: false });
    // Reseta o estado de loading quando a receita mudar
    setIsImageLoading(true);
  }, [recipe.id]);

  // Animação de shimmer para o skeleton
  useEffect(() => {
    if (isImageLoading) {
      const shimmerAnimation = Animated.loop(
        Animated.sequence([
          Animated.timing(shimmerAnim, {
            toValue: 1,
            duration: 1000,
            useNativeDriver: true,
          }),
          Animated.timing(shimmerAnim, {
            toValue: 0,
            duration: 1000,
            useNativeDriver: true,
          }),
        ])
      );
      shimmerAnimation.start();
      return () => shimmerAnimation.stop();
    }
  }, [isImageLoading, shimmerAnim]);

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
                <Title title={category + " - " + recipe.name} />
              </TouchableOpacity>
            </View>
            <View style={styles.imageContainer}>
              {isImageLoading && (
                <View style={styles.skeletonContainer}>
                  <Animated.View
                    style={[
                      styles.skeleton,
                      {
                        opacity: shimmerAnim.interpolate({
                          inputRange: [0, 1],
                          outputRange: [0.5, 0.8],
                        }),
                      },
                    ]}
                  />
                </View>
              )}
              <Image
                source={{
                  uri: recipe.image || "",
                  cache: 'default'
                }}
                style={[styles.image, isImageLoading && styles.imageHidden]}
                resizeMode="cover"
                onLoadStart={() => setIsImageLoading(true)}
                onLoadEnd={() => setIsImageLoading(false)}
                onError={(error) => {
                  console.warn(t("recipeDetails.error.imageLoading"), recipe.image);
                  console.warn(t("recipeDetails.error.detailedError"), error.nativeEvent?.error || error);
                  setIsImageLoading(false);
                }}
              />
            </View>
          </View>
          <ScrollView
            ref={scrollViewRef}
            style={styles.scrollView}
            contentOffset={{ x: 0, y: 0 }}
          >
            <Title title={t("recipeDetails.ingredients")} underline />
            <View style={styles.ingredientsContainer}>
              {recipe.ingredients.map((item, index) => (
                <Text
                  style={index % 2 === 0 ? styles.textWhite : styles.text}
                  key={`${recipe.id}-ingredient-${index}`}
                >
                  {item}
                </Text>
              ))}
            </View>

            <View style={styles.sectionContainer} />

            <View>
              <Title title={t("recipeDetails.servings")} underline />
              <View style={styles.servingsContainer}>
                <Text>{recipe.servings}</Text>
              </View>
            </View>

            <View style={styles.sectionContainer} />

            <Title title={t("recipeDetails.preparation")} underline />
            <View style={styles.preparationContainer}>
              {recipe.preparation.map((item, index) => (
                <Text
                  style={index % 2 === 0 ? styles.textWhite : styles.text}
                  key={`${recipe.id}-preparation-${index}`}
                >
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
