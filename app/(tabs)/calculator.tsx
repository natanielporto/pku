import { useState } from "react";
import { useTranslation } from "react-i18next";
import { Text, TouchableOpacity, View, StyleSheet } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import Octicons from "@expo/vector-icons/Octicons";
import { CalculatorCard } from "@/components/molecules/CalculatorCard";
import Colors from "@/constants/Colors";

export default function CalculatorScreen() {
  const { t } = useTranslation();
  const items = [
    t("calculator.leucine"),
    t("calculator.tyrosine"),
    t("calculator.phenylalanine"),
    t("calculator.methionine"),
  ];

  const [protein, setProtein] = useState<string>("");
  const [aminoacid, setAminoacid] = useState<string>("");
  const [selectedItem, setSelectedItem] = useState<string | undefined>();

  const onChangeProtein = (value: string) => {
    setProtein(value);
    if (!Number.isNaN(+value) && value.trim() !== "") {
      if (selectedItem === t("calculator.leucine"))
        setAminoacid(String((+value * 1.5).toFixed(2)));
      if (selectedItem === t("calculator.tyrosine"))
        setAminoacid(String((+value * 0.7).toFixed(2)));
      if (selectedItem === t("calculator.phenylalanine"))
        setAminoacid(String((+value * 0.8).toFixed(2)));
      if (selectedItem === t("calculator.methionine"))
        setAminoacid(String((+value * 0.4).toFixed(2)));
    }
    if (value.trim() === "") {
      setAminoacid("");
    }
  };
  const onChangeAminoacid = (value: string) => {
    setAminoacid(value);
    if (!Number.isNaN(+value) && value.trim() !== "") {
      if (selectedItem === t("calculator.leucine"))
        setProtein(String((+value / 1.5).toFixed(2)));
      if (selectedItem === t("calculator.tyrosine"))
        setProtein(String((+value / 0.7).toFixed(2)));
      if (selectedItem === t("calculator.phenylalanine"))
        setProtein(String((+value / 0.8).toFixed(2)));
      if (selectedItem === t("calculator.methionine"))
        setProtein(String((+value / 0.4).toFixed(2)));
    }
    if (value.trim() === "") {
      setProtein("");
    }
  };

  const handleSelectItem = (item: string) => {
    if (selectedItem === item) {
      setSelectedItem(undefined);
    } else {
      setSelectedItem(item);
      setProtein("");
      setAminoacid("");
    }
  };

  return (
    <SafeAreaView style={{
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      flex: 1
    }}>
      <Text style={calculatorStyles.header}>{t("calculator.header")}</Text>
      <View style={calculatorStyles.mainContainer}>
        <View>
          {/* <View style={calculatorStyles.logoCard}>
            <Image source={require("../../assets/images/danone-logo.webp")} />
          </View> */}
          <CalculatorCard
            value={String(protein)}
            onChangeText={onChangeProtein}
            onPressIn={() => [setProtein(""), setAminoacid("")]}
            title={`${t("calculator.protein")}/g`}
            infoText={t("calculator.fromProteinToAminoacid")}
          />
        </View>

        <View style={calculatorStyles.iconContainer}>
          <Octicons
            name="arrow-switch"
            size={48}
            color="black"
            style={calculatorStyles.icon}
          />
        </View>

        <CalculatorCard
          value={String(aminoacid)}
          onChangeText={onChangeAminoacid}
          onPressIn={() => [setProtein(""), setAminoacid("")]}
          title={
            selectedItem
              ? `${selectedItem}/mg`
              : t("calculator.selectAminoacid")
          }
          infoText={t("calculator.fromAminoacidToProtein")}
          isInputError={
            selectedItem === undefined && aminoacid !== "" && protein == ""
          }
        />
      </View>

      <View style={calculatorStyles.container}>
        {items.map((item) => (
          <TouchableOpacity
            key={item}
            onPress={() => handleSelectItem(item)}
            style={[
              calculatorStyles.itemButtonBase,
              selectedItem === item
                ? calculatorStyles.itemButtonSelected
                : calculatorStyles.itemButtonDefault,
            ]}
          >
            <Text
              style={[
                calculatorStyles.itemTextBase,
                selectedItem === item
                  ? calculatorStyles.itemTextSelected
                  : null,
              ]}
            >
              {item}
            </Text>
          </TouchableOpacity>
        ))}
      </View>
    </SafeAreaView>
  );
}

const calculatorStyles = StyleSheet.create({
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
    backgroundColor: Colors.green.primary,
  },
  itemButtonDefault: {
    backgroundColor: Colors.green.light,
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
    backgroundColor: Colors.green.light,
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
    backgroundColor: Colors.green.light,
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginVertical: 16,
    marginHorizontal: 32,
    borderRadius: 16,
  },
  outputCardLast: {
    backgroundColor: Colors.green.light,
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
    backgroundColor: Colors.green.light,
    justifyContent: "center",
    alignItems: "center",
    height: 128,
    marginHorizontal: 16,
    borderRadius: 16,
  },
  icon: {
    transform: [{ rotate: "270deg" }, { scaleY: -1 }],
  },
  header: {
    textAlign: 'center',
    marginHorizontal: 16,
    marginVertical: 16,
    fontWeight: 'bold',
    fontSize: 16
  }
});
