import { NativeStackNavigationProp } from "@react-navigation/native-stack";

export type RecipeNavigatorRoutesProps = NativeStackNavigationProp<RecipeRoute>;

export type RecipeRoute = {
  list: {
    from: "home" | "favorites";
  };
  drinksAndCreams: {
    from: "home";
  };
  biscuitsAndCrackers: {
    from: "home";
  };
  cakesAndLittleCakes: {
    from: "home";
  };
  sweets: {
    from: "home";
  };
  pasta: {
    from: "home";
  };
  bread: {
    from: "home";
  };
  detail: {
    recipeId: string;
  };
};
