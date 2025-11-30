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

  // Se skipTranslation for true, usa o texto diretamente (para receitas já traduzidas)
  // Caso contrário, tenta traduzir (para categorias)
  const displayText = skipTranslation
    ? category
    : (() => {
        const translationKey = `recipes.${category}`;
        const translated = t(translationKey);
        // Se a tradução retornar a mesma chave, significa que não encontrou
        // Nesse caso, usa o texto original
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
          source={{ uri: image }}
          style={styles.image}
          onLoadStart={() => setIsLoading(true)}
          onLoadEnd={() => setIsLoading(false)}
          onError={() => setIsLoading(false)}
        />
      </View>
      <View style={styles.categoryContainer}>
        <Text style={styles.categoryText}>{displayText}</Text>
      </View>
    </TouchableOpacity>
  );
};
