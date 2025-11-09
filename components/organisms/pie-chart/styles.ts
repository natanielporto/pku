import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  scrollView: {
    flex: 1,
  },
  container: {
    flex: 1,
    alignItems: "center",
    paddingVertical: 16,
  },
  title: {
    fontSize: 24,
    marginBottom: 16,
    fontWeight: "bold",
  },
  cardsContainer: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: 8,
    justifyContent: "space-around",
    marginTop: 8,
    paddingHorizontal: 12,
    paddingBottom: 16,
  },
  card: {
    backgroundColor: "#fff",
    width: "48%",
    padding: 12,
    borderRadius: 8,
    borderLeftWidth: 4,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.1,
    shadowRadius: 2,
    elevation: 2,
  },
  cardTitle: {
    fontWeight: "bold",
    marginBottom: 4,
  },
  chartTitle: {
    fontSize: 24,
    margin: 10,
  },
  chartContainer: {
    flex: 1,
    alignItems: "center",
  },
});
