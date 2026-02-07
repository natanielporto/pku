import React, { useState } from "react";
import { Pressable, Text, View } from "react-native";
import Animated, { FadeIn, FadeOut } from "react-native-reanimated";
import { MaterialCommunityIcons } from "@expo/vector-icons";
import { styles } from "./styles";

interface FaqDropdownProps {
  question: string;
  answer: string;
}

export function FaqDropdown({ question, answer }: Readonly<FaqDropdownProps>) {
  const [open, setOpen] = useState(false);

  return (
    <View style={styles.container}>
      <Pressable onPress={() => setOpen(!open)}>
        <View style={styles.questionContainer}>
          <Text style={styles.questionText}>{question}</Text>
          <View style={styles.iconContainer}>
            <MaterialCommunityIcons
              name={open ? "arrow-up-right" : "arrow-down-right"}
              size={24}
              color="#f0f0f0"
            />
          </View>
        </View>
      </Pressable>

      {open && (
        <Animated.Text
          entering={FadeIn.duration(300)}
          exiting={FadeOut.duration(50)}
          style={styles.answerContainer}
        >
          <Text style={styles.answerText}>{answer}</Text>
        </Animated.Text>
      )}
    </View>
  );
}
