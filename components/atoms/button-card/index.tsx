import { useState } from "react";
import { useTranslation } from "react-i18next";
import {
  ActivityIndicator,
  Image,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { styles } from "./styles";

export const ButtonCard = ({
  image,
  category,
  onPress,
  skipTranslation = false,
}: {
  image: string;
  category: string;
  onPress: Function;
  skipTranslation?: boolean;
}) => {
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = useState(true);

  // If skipTranslation is true, uses the text directly (for recipes already translated from the database)
  // Otherwise, tries to translate (for categories or recipes)
  const displayText = skipTranslation
    ? category
    : (() => {
        // Checks if the text looks like a slug (contains hyphens and is in lowercase)
        // If it's not a slug, it's probably already translated, so use it directly
        const isSlug = /^[a-z0-9-]+$/.test(category);

        if (!isSlug) {
          // Already translated, use it directly
          return category;
        }

        // It's a slug, try to translate
        // First try to translate as a category
        let translationKey = `categories.${category}`;
        let translated = t(translationKey);

        // If not found as a category, try as a recipe
        if (translated === translationKey) {
          translationKey = `recipes.${category}`;
          translated = t(translationKey);
        }

        // If not found any translation, use the original text
        return translated === translationKey ? category : translated;
      })();

  return (
    <TouchableOpacity
      style={styles.container}
      onPress={() => onPress(category)}
    >
      <View style={styles.leafIcon}>
        <Ionicons name="leaf-outline" size={95} color="#F2F1EF" />
      </View>
      <View style={styles.imageContainer}>
        {isLoading && (
          <View style={styles.loaderContainer}>
            <ActivityIndicator size="large" color="#0C6941" />
          </View>
        )}
        <Image
          source={{
            uri: image,
            cache: 'default'
          }}
          style={styles.image}
          resizeMode="cover"
          onLoadStart={() => setIsLoading(true)}
          onLoadEnd={() => setIsLoading(false)}
          onError={(error) => {
            console.log("Erro ao carregar imagem:", image);
            console.log("Erro detalhado:", error.nativeEvent?.error || error);
            setIsLoading(false);
          }}
        />
      </View>
      <View style={styles.categoryContainer}>
        <Text style={styles.categoryText}>{displayText}</Text>
      </View>
    </TouchableOpacity>
  );
};
