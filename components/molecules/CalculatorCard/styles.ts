import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  card: {
    backgroundColor: "#f0fdf4",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginVertical: 16,
    marginHorizontal: 16,
    borderRadius: 16,
  },
  cardContent: {
    position: "relative",
  },
  cardTitle: {
    fontSize: 20,
  },
  input: {
    height: 40,
    margin: 12,
    borderWidth: 2,
    padding: 8,
    width: 256,
    borderRadius: 16,
    textAlign: "center",
    backgroundColor: "#fafafa",
  },
  cardDescription: {
    fontSize: 12,
    color: "gray",
    textAlign: "center",
    marginHorizontal: 80,
    position: "absolute",
    backgroundColor: "#fafafa",
    padding: 8,
    borderRadius: 16,
    zIndex: 1000,
    left: 0,
    right: 0,
    marginVertical: 8,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.1,
    shadowRadius: 2,
    elevation: 2,
    top: 60,
  },
  infoIcon: {
    position: "absolute",
    right: 20,
    top: 19.5,
  },
});
