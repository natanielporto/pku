import React from "react";
import { Text, View, StyleSheet } from "react-native";

interface Props {
  title: string;
  underline?: boolean;
  customClass?: string;
}

const defaultClass = "w-full font-bold text-2xl";

export function Title({ title, underline = false, customClass }: Props) {
  const titleComponent = (
    <Text className={customClass || defaultClass}>{title}</Text>
  );

  return underline ? (
    <View style={styles.underline}>{titleComponent}</View>
  ) : (
    titleComponent
  );
}

const styles = StyleSheet.create({
  underline: {
    borderBottomWidth: 2,
    borderBottomColor: "green",
  },
});