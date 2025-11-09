import React from "react";
import { ScrollView, Text, View } from "react-native";
import PieChart from "react-native-pie-chart";
import { GraphInfo } from "@/types/RecipeTypes/recipe";
import { styles } from "./styles";

export const Chart = ({
  graphInformation,
}: {
  readonly graphInformation: GraphInfo[];
}) => {
  const widthAndHeight = 200;
  const sliceColor = ["#002910", "#0d7a2f", "#3dbc5f", "#5fd67f"];
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
          <Text style={styles.chartTitle}>Aminoácidos</Text>
          <PieChart widthAndHeight={widthAndHeight} series={series} />
        </View>

        <View style={styles.cardsContainer}>
          <View style={[styles.card, { borderLeftColor: sliceColor[0] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[0] }]}>
              Leucina: {graphInformation[0].leucine}%
            </Text>
            <Text>{graphInformation[0].totalLeucine}mg total</Text>
            <Text>{graphInformation[0].servingLeucine}mg a porção</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[1] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[1] }]}>
              Tirosina: {graphInformation[1].tirosine}%
            </Text>
            <Text>{graphInformation[1].totalTirosine}mg total</Text>
            <Text>{graphInformation[1].servingTirosine}mg a porção</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[2] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[2] }]}>
              Fenilalanina: {graphInformation[2].fenil}%
            </Text>
            <Text>{graphInformation[2].totalFenil}mg total</Text>
            <Text>{graphInformation[2].servingFenil}mg a porção</Text>
          </View>
          <View style={[styles.card, { borderLeftColor: sliceColor[3] }]}>
            <Text style={[styles.cardTitle, { color: sliceColor[3] }]}>
              Metiotina: {graphInformation[3].metiotine}%
            </Text>
            <Text>{graphInformation[3].totalMetiotine}mg total</Text>
            <Text>{graphInformation[3].servingMetiotine}mg a porção</Text>
          </View>
        </View>
      </ScrollView>
    </View>
  );
};
