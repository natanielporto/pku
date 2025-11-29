import { StyleSheet } from "react-native";
import Colors from "@/constants/Colors";

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
    backgroundColor: Colors.gray.background,
    width: "48%",
    padding: 12,
    borderRadius: 8,
    borderLeftWidth: 4,
    shadowColor: Colors.shadow.color,
    shadowOffset: Colors.shadow.offset,
    shadowOpacity: Colors.shadow.opacity,
    shadowRadius: Colors.shadow.radius,
    elevation: Colors.shadow.elevation,
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
