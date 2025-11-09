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
  },
  leafIcon: {
    transform: [{ rotate: "20deg" }],
    marginTop: 32,
    marginRight: 4,
    position: "absolute",
    right: -23,
  },
  imageContainer: {
    // Container da imagem
  },
  image: {
    width: 112, // w-28 = 7rem = 112px
    height: 112, // h-28 = 7rem = 112px
    borderRadius: 16, // rounded-2xl
    marginLeft: 16, // ml-4
    marginRight: 32, // mr-8
    resizeMode: "cover", // object-fill
  },
  categoryContainer: {
    flex: 1,
    width: "50%",
  },
  categoryText: {
    fontSize: 24, // text-2xl
  },
});
