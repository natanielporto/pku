import { StyleSheet } from "react-native";

export const calculatorStyles = StyleSheet.create({
  container: {
    display: "flex",
    flexDirection: "row",
    marginHorizontal: 16,
    flexWrap: "wrap",
    gap: 16,
    justifyContent: "space-between",
  },
  itemButtonBase: {
    display: "flex",
    alignItems: "center",
    padding: 16,
    width: "45%",
    borderRadius: 8,
  },
  itemButtonSelected: {
    backgroundColor: "#0C6941",
  },
  itemButtonDefault: {
    backgroundColor: "#f0fdf4",
  },
  itemTextBase: {
    fontWeight: "bold",
  },
  itemTextSelected: {
    color: "#f0f0f0",
  },
  mainContainer: {
    display: "flex",
    justifyContent: "space-between",
    width: "100%",
  },
  inputCard: {
    backgroundColor: "#f0fdf4",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginVertical: 16,
    marginHorizontal: 32,
    borderRadius: 16,
  },
  inputLabel: {
    fontSize: 20,
  },
  textInputBase: {
    height: 40,
    margin: 12,
    borderWidth: 2,
    padding: 8,
    width: 256,
    borderRadius: 16,
    textAlign: "center",
  },
  syncContainer: {
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: 60,
    marginVertical: 20,
  },
  outputCard: {
    backgroundColor: "#f0fdf4",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginVertical: 16,
    marginHorizontal: 32,
    borderRadius: 16,
  },
  outputCardLast: {
    backgroundColor: "#f0fdf4",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginHorizontal: 32,
    borderRadius: 16,
  },
  outputLabel: {
    fontSize: 20,
  },
  iconContainer: {
    justifyContent: "center",
    alignItems: "center",
    marginVertical: 48,
  },
  logoCard: {
    backgroundColor: "#f0fdf4",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginHorizontal: 16,
    borderRadius: 16,
  },
  icon: {
    transform: [{ rotate: "270deg" }, { scaleY: -1 }],
  },
});
