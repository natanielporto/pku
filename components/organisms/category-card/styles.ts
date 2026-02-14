// components/organisms/category-card/styles.ts
import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    height: 200,
    borderRadius: 16,
    marginBottom: 16,
    overflow: "hidden",
    backgroundColor: "#f0f0f0",
    shadowColor: "#000",
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
    backgroundColor: "rgba(0, 0, 0, 0.4)",
    justifyContent: "flex-end",
    padding: 16,
  },
  categoryName: {
    fontSize: 20,
    fontWeight: "bold",
    color: "#f0f0f0",
    marginBottom: 4,
  },
  recipeCount: {
    fontSize: 14,
    color: "#e0e0e0",
  },
});
