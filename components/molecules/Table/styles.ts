import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    // Container principal
  },
  headerRow: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-between",
    width: "100%",
  },
  headerCell: {
    flex: 1,
    textAlign: "center",
  },
  headerCellCenter: {
    flex: 1,
    paddingLeft: 8,
    textAlign: "right",
  },
  headerCellRight: {
    flex: 1,
    textAlign: "right",
    paddingRight: 8,
  },
  row: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-between",
    width: "100%",
    paddingRight: 8,
  },
  rowWhite: {
    backgroundColor: "white",
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-between",
    width: "100%",
    paddingRight: 8,
  },
  cellCenter: {
    flex: 1,
    paddingLeft: 8,
  },
  cellRight: {
    flex: 1,
    textAlign: "right",
  },
});
