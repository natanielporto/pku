import React from "react";
import { useTranslation } from "react-i18next";
import { StyleSheet, Text, View } from "react-native";
import EditScreenInfo from "@/components/EditScreenInfo";

// import styles from "@/styles/screens/home.styles";

export default function Faq() {
  const { t } = useTranslation();

  return (
    <View style={styles.container}>
      <Text style={styles.title}>{t("tabs.faq")}</Text>
      <View
        style={styles.separator}
        // lightColor="#eee"
        // darkColor="rgba(255,255,255,0.1)"
      />
      <EditScreenInfo path="app/(tabs)/faq.tsx" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: "80%",
  },
});
