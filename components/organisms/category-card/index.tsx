import { useTranslation } from "react-i18next";
import { useRouter } from "expo-router";
import { ButtonCard } from "@/components/atoms/button-card";

type Category = {
  category: string;
  image: string;
  recipes: unknown[];
};

export function CategoryCard({
  categoryData,
}: {
  readonly categoryData: Category;
}) {
  const router = useRouter();

  function handleCategoryPress() {
    router.push({
      pathname: "/(tabs)/recipe-list",
      params: { category: categoryData.category },
    });
  }

  return (
    <ButtonCard
      category={categoryData.category}
      image={categoryData.image}
      onPress={handleCategoryPress}
      key={categoryData.category}
    />
  );
}
