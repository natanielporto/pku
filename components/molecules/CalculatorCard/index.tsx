import { useEffect, useState } from "react";
import { Text, TextInput, View } from "react-native";
import Animated, { FadeIn, FadeOut } from "react-native-reanimated";
import Octicons from "@expo/vector-icons/Octicons";
import { styles } from "./styles";

type CalculatorCardProps = {
  value: string;
  onChangeText: (value: string) => void;
  onPressIn: () => void;
  title: string;
  infoText: string;
  isInputError?: boolean;
};

export function CalculatorCard({
  value,
  onChangeText,
  onPressIn,
  title,
  infoText,
  isInputError,
}: Readonly<CalculatorCardProps>) {
  const [isInfoVisible, setIsInfoVisible] = useState<boolean>(false);

  useEffect(() => {
    if (isInfoVisible) {
      const timer = setTimeout(() => {
        setIsInfoVisible(false);
      }, 10000);

      return () => clearTimeout(timer);
    }
  }, [isInfoVisible]);

  const handleChangeText = (text: string) => {
    const chars = text.split("");
    const filtered = chars.filter((char) => /[\d.]/.test(char)).join("");
    onChangeText(filtered);
  };

  return (
    <View style={styles.card}>
      <View style={styles.cardContent}>
        <TextInput
          onPressIn={onPressIn}
          onChangeText={handleChangeText}
          value={value}
          keyboardType="numeric"
          style={styles.input}
        />
        <Octicons
          name="info"
          size={24}
          color="black"
          style={styles.infoIcon}
          onPress={() => setIsInfoVisible(!isInfoVisible)}
        />
      </View>
      {isInfoVisible && (
        <Animated.Text
          entering={FadeIn.duration(300)}
          exiting={FadeOut.duration(300)}
          style={styles.cardDescription}
        >
          {infoText}
        </Animated.Text>
      )}
      <Text
        style={{ ...styles.cardTitle, color: isInputError ? "red" : "black" }}
      >
        {title}
      </Text>
    </View>
  );
}
