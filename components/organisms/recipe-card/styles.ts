import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    // Container principal do card
  },
  touchableContainer: {
    flex: 1,
    padding: 20,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-around",
    gap: 8,
    height: 180,
    borderRadius: 20,
    width: "100%",
  },
  image: {
    width: 100,
    height: 100,
    borderRadius: 20,
    maxWidth: "40%",
  },
  contentContainer: {
    width: "60%",
  },
});
