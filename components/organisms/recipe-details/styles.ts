import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: "#fafafa", // bg-bgLight
    paddingVertical: 0,
  },
  container: {
    flex: 1,
    position: "absolute",
    top: 0,
    bottom: 0,
    right: 0,
    left: 0,
    paddingHorizontal: 20,
  },
  headerSection: {
    marginVertical: 16,
  },
  headerRow: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 16,
  },
  backButton: {
    marginRight: 4,
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
  },
  imageContainer: {
    // Container da imagem
  },
  image: {
    width: "100%",
    height: 200,
    objectFit: "cover",
    borderRadius: 16,
  },
  scrollView: {
    // ScrollView
  },
  sectionContainer: {
    marginBottom: 8,
  },
  ingredientsContainer: {
    backgroundColor: "#fff",
    padding: 16,
    borderRadius: 16,
  },
  servingsContainer: {
    marginTop: 8,
    backgroundColor: "#fff",
    padding: 16,
    borderRadius: 16,
  },
  preparationContainer: {
    backgroundColor: "#fff",
    padding: 16,
    borderRadius: 16,
  },
  text: {
    marginBottom: 8,
  },
  tableContainer: {
    marginVertical: 8,
  },
  chartContainer: {
    // Container do chart
  },
});
