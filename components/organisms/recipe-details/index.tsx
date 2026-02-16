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
import { supabase } from "@/services/supabase";

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
  const [userVote, setUserVote] = useState<"like" | "dislike" | null>(null);

  useEffect(() => {
    fetchInteractionState();
  }, [recipe.id]);

  const fetchInteractionState = async () => {
    try {
      const {
        data: { user },
      } = await supabase.auth.getUser();

      // Get Counts
      const { count: lCount, error: lError } = await supabase
        .from("recipe_likes")
        .select("*", { count: "exact", head: true })
        .eq("recipe_id", recipe.id);

      const { count: dCount, error: dError } = await supabase
        .from("recipe_dislikes")
        .select("*", { count: "exact", head: true })
        .eq("recipe_id", recipe.id);

      if (lError) throw lError;
      if (dError) throw dError;

      if (user) {
        // Check if user liked
        const { data: liked, error: likeCheckError } = await supabase
          .from("recipe_likes")
          .select("user_id")
          .eq("recipe_id", recipe.id)
          .eq("user_id", user.id)
          .maybeSingle();

        if (likeCheckError) throw likeCheckError;

        if (liked) {
          setUserVote("like");
          return;
        }

        // Check if user disliked
        const { data: disliked, error: dislikeCheckError } = await supabase
          .from("recipe_dislikes")
          .select("user_id")
          .eq("recipe_id", recipe.id)
          .eq("user_id", user.id)
          .maybeSingle();

        if (dislikeCheckError) throw dislikeCheckError;

        if (disliked) {
          setUserVote("dislike");
        } else {
          setUserVote(null);
        }
      }
    } catch (error) {
      console.error("Error fetching interaction state:", error);
    }
  };

  const likeRecipe = async () => {
    try {
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) return; // TODO: Handle unauthenticated case (maybe redirect to login)

      if (userVote === "like") {
        // Remove like
        const { error } = await supabase
          .from("recipe_likes")
          .delete()
          .eq("recipe_id", recipe.id)
          .eq("user_id", user.id);
        if (error) throw error;
        setUserVote(null);
      } else {
        // Add like
        const { error } = await supabase
          .from("recipe_likes")
          .insert({ recipe_id: recipe.id, user_id: user.id });
        if (error) throw error;

        // If was disliked, remove dislike
        if (userVote === "dislike") {
          const { error: delError } = await supabase
            .from("recipe_dislikes")
            .delete()
            .eq("recipe_id", recipe.id)
            .eq("user_id", user.id);
          if (delError) throw delError;
        }

        setUserVote("like");
      }
    } catch (error) {
      console.error("Error toggling like:", error);
    }
  };

  const dislikeRecipe = async () => {
    try {
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) return;

      if (userVote === "dislike") {
        // Remove dislike
        const { error } = await supabase
          .from("recipe_dislikes")
          .delete()
          .eq("recipe_id", recipe.id)
          .eq("user_id", user.id);
        if (error) throw error;
        setUserVote(null);
      } else {
        // Add dislike
        const { error } = await supabase
          .from("recipe_dislikes")
          .insert({ recipe_id: recipe.id, user_id: user.id });
        if (error) throw error;

        // If was liked, remove like
        if (userVote === "like") {
          const { error: delError } = await supabase
            .from("recipe_likes")
            .delete()
            .eq("recipe_id", recipe.id)
            .eq("user_id", user.id);
          if (delError) throw delError;
        }

        setUserVote("dislike");
      }
    } catch (error) {
      console.error("Error toggling dislike:", error);
    }
  };

  // ensures that the scroll starts at the top when the recipe changes
  useEffect(() => {
    scrollViewRef.current?.scrollTo({ y: 0, animated: false });
    // resets the loading state when the recipe changes
    setIsImageLoading(true);
  }, [recipe.id]);

  // shimmer animation for the skeleton
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

  const getLikeStyles = () => {
    if (userVote === "like" || userVote === null) {
      return styles.likeButtonActive;
    }
    return styles.likeButtonInactive;
  }

  const getDislikeStyles = () => {
    if (userVote === "dislike" || userVote === null) {
      return styles.dislikeButtonActive;
    }
    return styles.dislikeButtonInactive;
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
                <Title title={category} />
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
                  console.log(t("recipeDetails.error.imageLoading"), recipe.image);
                  console.log(t("recipeDetails.error.detailedError"), error.nativeEvent?.error || error);
                  setIsImageLoading(false);
                }}
              />
              <Text style={styles.recipeName}>{recipe.name}</Text>
              <TouchableOpacity onPress={likeRecipe} style={getLikeStyles()}>
                <Feather
                  name="thumbs-up"
                  size={16}
                  color="white"
                />
              </TouchableOpacity>
              <TouchableOpacity
                onPress={dislikeRecipe}
                style={getDislikeStyles()}
              >
                <Feather
                  name="thumbs-down"
                  size={16}
                  color="white"
                />
              </TouchableOpacity>
            </View>
          </View>
          <ScrollView
            ref={scrollViewRef}
            style={styles.scrollView}
            contentOffset={{ x: 0, y: 0 }}
          >
            <Title title={t("recipeDetails.ingredients")} underline />
            <View style={styles.ingredientsContainer}>
              {recipe.ingredients.map((item: string, index: number) => (
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
              {recipe.preparation.map((item: string, index: number) => (
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
