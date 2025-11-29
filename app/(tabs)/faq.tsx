import { useTranslation } from "react-i18next";
import { View } from "react-native";
import { FaqDropdown } from "@/components/molecules/faq-dropdown";

export default function FaqScreen() {
  const { t } = useTranslation();

  const sampleFaq = [
    {
      question: t("faq.question1"),
      answer: t("faq.answer1"),
    },
    {
      question: t("faq.question2"),
      answer: t("faq.answer2"),
    },
    {
      question: t("faq.question3"),
      answer: t("faq.answer3"),
    },
  ];

  return (
    <View>
      {sampleFaq.map((faq) => (
        <FaqDropdown key={faq.question} {...faq} />
      ))}
    </View>
  );
}
