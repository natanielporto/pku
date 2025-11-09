import React, { useState } from "react";
import { Pressable, Text, View } from "react-native";
import { MaterialCommunityIcons } from "@expo/vector-icons";
import { styles } from "./styles";

interface FaqDropdownProps {
  question: string;
  answer: string;
}

export function FaqDropdown({ question, answer }: Readonly<FaqDropdownProps>) {
  const [open, setOpen] = useState(false);

  return (
    <Pressable style={styles.container} onPress={() => setOpen(!open)}>
      <View style={styles.questionContainer}>
        <Text style={styles.questionText}>{question}</Text>
        <View style={styles.iconContainer}>
          <MaterialCommunityIcons
            name={open ? "arrow-up-right" : "arrow-down-right"}
            size={24}
            color="white"
          />
        </View>
      </View>

      {open && (
        <View style={styles.answerContainer}>
          <Text style={styles.answerText}>{answer}</Text>
        </View>
      )}
    </Pressable>
  );
}
