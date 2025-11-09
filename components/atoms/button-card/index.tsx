import { useTranslation } from "react-i18next";
import { Image, Text, TouchableOpacity, View } from "react-native";
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
  return (
    <TouchableOpacity
      style={styles.container}
      onPress={() => onPress(category)}
    >
      <View style={styles.leafIcon}>
        <Ionicons name="leaf-outline" size={95} color="#F2F1EF" />
      </View>
      <View style={styles.imageContainer}>
        <Image source={{ uri: image }} style={styles.image} />
      </View>
      <View style={styles.categoryContainer}>
        <Text style={styles.categoryText}>{t(`home.${category}`)}</Text>
      </View>
    </TouchableOpacity>
  );
};
