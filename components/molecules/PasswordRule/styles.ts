import Colors from "@/constants/Colors";
import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  passwordRule: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
  },
  passwordRuleText: {
    fontSize: 12,
    color: Colors.gray.dark,
  },
  passwordRuleTextValid: {
    color: Colors.green.primary,
  },
});