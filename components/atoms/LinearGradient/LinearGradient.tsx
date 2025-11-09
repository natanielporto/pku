import React, { JSX } from "react";
import { ColorValue } from "react-native";
import { LinearGradient as Gradient } from "expo-linear-gradient";

interface LinearGradientProps {
  children: JSX.Element;
  colors?: string[];
}

export function LinearGradient({
  children,
  colors = ["#0c6941", "#8bdfbb"],
}: Readonly<LinearGradientProps>) {
  return (
    <Gradient
      colors={colors as [ColorValue, ColorValue, ...ColorValue[]]}
      style={{ borderRadius: 20 }}
      start={{ x: 0, y: 0 }}
      end={{ x: 1, y: 1 }}
    >
      {children}
    </Gradient>
  );
}
