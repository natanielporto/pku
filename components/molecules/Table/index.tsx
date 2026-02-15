import { Text, View } from "react-native";
import { NutritionalInfo } from "@/types/RecipeTypes/recipe";
import { Title } from "../../atoms/Title/Title";
import { styles } from "./styles";
import { useTranslation } from "react-i18next";

export const Table = ({
  nutritionalInformation,
}: {
  readonly nutritionalInformation: NutritionalInfo[];
}) => {

  const {t} = useTranslation();

  return (
    <View style={styles.container}>
      <Title title={t("nutritionalInformationTable.header")} underline />
      <View style={styles.headerRow}>
        <Text style={styles.headerCell}></Text>
        <Text style={styles.headerCellCenter}>{t("nutritionalInformationTable.total")}</Text>
        <Text style={styles.headerCellRight}>{t("nutritionalInformationTable.serving")}</Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.calories")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[0].totalEnergy}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[0].servingEnergy}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.carbs")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[1].totalCarbs}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[1].servingCarbs}
        </Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.protein")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[2].totalProteins}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[2].servingProteins}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.lipids")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[3].totalLipids}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[3].servingLipids}
        </Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.sodium")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[4].totalSodium}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[4].servingSodium}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>{t("nutritionalInformationTable.potassium")}</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[5].totalPotassium}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[5].servingPotassium}
        </Text>
      </View>
    </View>
  );
};
