import { Feather } from "@expo/vector-icons";
import { Text, View } from "react-native";
import { styles } from "./styles";

export function PasswordRule({
  isValid,
  text,
}: {
  readonly isValid: boolean;
  readonly text: string;
}) {
  return (
    <View style={styles.passwordRule}>
      <Feather
        name={isValid ? "check-circle" : "circle"}
        size={14}
        color={isValid ? "#0C6941" : "#ccc"}
      />
      <Text
        style={[
          styles.passwordRuleText,
          isValid && styles.passwordRuleTextValid,
        ]}
      >
        {text}
      </Text>
    </View>
  );
}
