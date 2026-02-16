import React from "react";
import { Text, TouchableOpacity, StyleSheet } from "react-native";

interface Props {
  action: string;
  accessibilityLabel: string;
  color?: string;
  customClass?: {};
  onPress?: () => void;
}

export function Button({
  action,
  accessibilityLabel,
  onPress,
  color,
  customClass,
}: Props) {
  return (
    <TouchableOpacity
      onPress={onPress}
      style={customClass ?? styles.defaultClass}
      accessibilityLabel={accessibilityLabel}
    >
      <Text className="font-bold" style={{ color: color ?? "#f0f0f0" }}>
        {action}
      </Text>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  defaultClass: {
    backgroundColor: "yellow",
    boxShadow: "0 1px 2px 0 rgba(0, 0, 0, 0.05)",
    width: 120,
    height: 40,
    borderRadius: 24,
    justifyContent: "center",
    alignItems: "center",
  },
})