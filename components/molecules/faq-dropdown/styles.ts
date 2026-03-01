import Colors from "@/constants/Colors";
import { StyleSheet } from "react-native";

export const styles = StyleSheet.create({
  container: {
    paddingTop: 16,
  },
  questionContainerClosed: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    backgroundColor: Colors.base.white,
    borderRadius: 8,
    padding: 8,
    marginHorizontal: 24,
  },
  questionContainerOpen: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    backgroundColor: Colors.base.white,
    borderTopLeftRadius: 8,
    borderTopRightRadius: 8,
    padding: 8,
    marginHorizontal: 24,
  },
  questionText: {
    flex: 1,
    fontWeight: "bold",
  },
  iconContainer: {
    backgroundColor: Colors.green.icon,
    borderRadius: 4,
  },
  answerContainer: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    backgroundColor: Colors.base.white,
    borderBottomLeftRadius: 8,
    borderBottomRightRadius: 8,
    padding: 8,
    marginHorizontal: 24,
  },
  answerText: {
    flex: 1,
  },
});
