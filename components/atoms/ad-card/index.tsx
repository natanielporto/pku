import { Image, Linking, TouchableOpacity } from "react-native";
import { styles } from "./styles";

function handleSponsorSite() {
  Linking.openURL("https://www.danone.com/");
}

export const AdCard = () => {
  return (
    <TouchableOpacity style={styles.container} onPress={handleSponsorSite}>
      <Image
        source={require("../../../assets/images/danone-logo.webp")}
        style={styles.image}
      />
    </TouchableOpacity>
  );
};
