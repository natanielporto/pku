import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: "#f0f0f0",
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
    position: "relative",
  },
  image: {
    width: "100%",
    height: 200,
    objectFit: "cover",
    borderRadius: 16,
  },
  imageHidden: {
    opacity: 0,
  },
  skeletonContainer: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    width: "100%",
    height: 200,
    borderRadius: 16,
    overflow: "hidden",
  },
  skeleton: {
    width: "100%",
    height: "100%",
    backgroundColor: "#e0e0e0",
    borderRadius: 16,
  },
  scrollView: {
    // ScrollView
  },
  sectionContainer: {
    marginBottom: 8,
  },
  ingredientsContainer: {
    backgroundColor: "#f0f0f0",
    borderRadius: 16,
    marginTop: 8,
  },
  servingsContainer: {
    marginTop: 8,
    backgroundColor: "white",
    paddingInline: 16,
  },
  preparationContainer: {
    backgroundColor: "#f0f0f0",
    paddingTop: 8,
    borderRadius: 16,
  },
  text: {
    paddingInline: 16,
    marginBottom: 4,
  },
  textWhite: {
    paddingInline: 16,
    marginBottom: 4,
    backgroundColor: "#fff",
  },
  tableContainer: {
    marginVertical: 8,
  },
  chartContainer: {
    // Container do chart
  },
});
