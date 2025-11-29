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
}: {
  image: string;
  category: string;
  onPress: Function;
}) => {
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = useState(true);

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
        <Text style={styles.categoryText}>{t(`recipes.${category}`)}</Text>
      </View>
    </TouchableOpacity>
  );
};
