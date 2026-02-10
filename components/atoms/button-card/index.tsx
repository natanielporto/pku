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

  // Se skipTranslation for true, usa o texto diretamente (para receitas já traduzidas do banco)
  // Caso contrário, tenta traduzir (para categorias ou receitas)
  const displayText = skipTranslation
    ? category
    : (() => {
        // Verifica se o texto parece ser um slug (contém hífens e está em minúsculas)
        // Se não for slug, provavelmente já está traduzido, então usa diretamente
        const isSlug = /^[a-z0-9-]+$/.test(category);

        if (!isSlug) {
          // Já está traduzido, usa diretamente
          return category;
        }

        // É um slug, tenta traduzir
        // Primeiro tenta traduzir como categoria
        let translationKey = `categories.${category}`;
        let translated = t(translationKey);

        // Se não encontrou como categoria, tenta como receita
        if (translated === translationKey) {
          translationKey = `recipes.${category}`;
          translated = t(translationKey);
        }

        // Se não encontrou nenhuma tradução, usa o texto original
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
            console.warn("❌ Erro ao carregar imagem:", image);
            console.warn("Erro detalhado:", error.nativeEvent?.error || error);
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
