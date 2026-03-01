// components/organisms/category-card/styles.ts
import Colors from "@/constants/Colors";
import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    height: 200,
    borderRadius: 16,
    marginBottom: 16,
    overflow: "hidden",
    backgroundColor: Colors.gray.background,
    shadowColor: Colors.base.black,
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  image: {
    width: "100%",
    height: "100%",
    position: "absolute",
  },
  overlay: {
    flex: 1,
    backgroundColor: Colors.transparent.black.medium,
    justifyContent: "flex-end",
    padding: 16,
  },
  categoryName: {
    fontSize: 20,
    fontWeight: "bold",
    color: Colors.gray.background,
    marginBottom: 4,
  },
  recipeCount: {
    fontSize: 14,
    color: Colors.gray.medium,
  },
});
