import { Text, View } from "react-native";
import { NutritionalInfo } from "@/types/RecipeTypes/recipe";
import { Title } from "../../atoms/Title/Title";
import { styles } from "./styles";

export const Table = ({
  nutritionalInformation,
}: {
  readonly nutritionalInformation: NutritionalInfo[];
}) => {
  return (
    <View style={styles.container}>
      <Title title={"Informações nutricionais"} underline />
      <View style={styles.headerRow}>
        <Text style={styles.headerCell}></Text>
        <Text style={styles.headerCellCenter}>Total</Text>
        <Text style={styles.headerCellRight}>Unidade</Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>Calorias</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[0].totalEnergy}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[0].servingEnergy}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>Carboidratos</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[1].totalCarbs}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[1].servingCarbs}
        </Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>Proteinas</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[2].totalProteins}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[2].servingProteins}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>Lipídios</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[3].totalLipids}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[3].servingLipids}
        </Text>
      </View>
      <View style={styles.rowWhite}>
        <Text style={styles.cellCenter}>Sódio</Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[4].totalSodium}
        </Text>
        <Text style={styles.cellRight}>
          {nutritionalInformation[4].servingSodium}
        </Text>
      </View>
      <View style={styles.row}>
        <Text style={styles.cellCenter}>Potássio</Text>
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
