import React from "react";
import { ScrollView, Text, View } from "react-native";
import PieChart from "react-native-pie-chart";
import Colors from "@/constants/Colors";
import { GraphInfo } from "@/types/RecipeTypes/recipe";
import { styles } from "./styles";
import { useTranslation } from "react-i18next";

export const Chart = ({
  graphInformation,
}: {
  readonly graphInformation: GraphInfo[];
}) => {
  const { t } = useTranslation();
  const widthAndHeight = 200;
  const sliceColor = [
    Colors.pieChart.slice1,
    Colors.pieChart.slice2,
    Colors.pieChart.slice3,
    Colors.pieChart.slice4,
  ];
  const series = [
    { value: graphInformation[0].leucine, color: sliceColor[0] },
    { value: graphInformation[1].tirosine, color: sliceColor[1] },
    { value: graphInformation[2].fenil, color: sliceColor[2] },
    { value: graphInformation[3].metiotine, color: sliceColor[3] },
  ];

  return (
    <View>
      <ScrollView style={styles.scrollView}>
        <View style={styles.chartContainer}>
          <Text style={styles.chartTitle}>{t("pieChart.title")}</Text>
          <PieChart widthAndHeight={widthAndHeight} series={series} />
        </View>

        <View style={styles.cardsContainer}>
          <View style={[styles.card, { borderLeftColor: sliceColor[0] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[0] }]}>
              {t("pieChart.leucine")}: {graphInformation[0].leucine}%
            </Text>
            <Text>{graphInformation[0].totalLeucine} {t("pieChart.total")}</Text>
            <Text>{graphInformation[0].servingLeucine} {t("pieChart.serving")}</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[1] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[1] }]}>
              {t("pieChart.tirosine")}: {graphInformation[1].tirosine}%
            </Text>
            <Text>{graphInformation[1].totalTirosine} {t("pieChart.total")}</Text>
            <Text>{graphInformation[1].servingTirosine} {t("pieChart.serving")}</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[2] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[2] }]}>
              {t("pieChart.fenil")}: {graphInformation[2].fenil}%
            </Text>
            <Text>{graphInformation[2].totalFenil} {t("pieChart.total")}</Text>
            <Text>{graphInformation[2].servingFenil} {t("pieChart.serving")}</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[3] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[3] }]}>
              {t("pieChart.metiotine")}: {graphInformation[3].metiotine}%
            </Text>
            <Text>{graphInformation[3].totalMetiotine} {t("pieChart.total")}</Text>
            <Text>{graphInformation[3].servingMetiotine} {t("pieChart.serving")}</Text>
          </View>
        </View>
      </ScrollView>
    </View>
  );
};
