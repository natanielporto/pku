import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    borderRadius: 24,
    backgroundColor: "#f0fdf4", // green-50
    height: 140,
    width: "93%",
    alignSelf: "center",
    position: "relative",
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.1,
    shadowRadius: 2,
    elevation: 2,
    paddingRight: 8,
  },
  leafIcon: {
    transform: [{ rotate: "20deg" }],
    marginTop: 32,
    marginRight: 4,
    position: "absolute",
    right: -20,
  },
  imageContainer: {
    position: "relative",
  },
  loaderContainer: {
    position: "absolute",
    width: 112,
    height: 112,
    borderRadius: 16,
    marginLeft: 16,
    marginRight: 32,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#f0f0f0",
    zIndex: 1,
  },
  image: {
    width: 112,
    height: 112,
    borderRadius: 16,
    marginLeft: 16,
    marginRight: 32,
    resizeMode: "cover",
  },
  categoryContainer: {
    flex: 1,
    width: "50%",
  },
  categoryText: {
    fontSize: 24,
  },
});
