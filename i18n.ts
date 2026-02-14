import { initReactI18next } from "react-i18next";
import * as Localization from "expo-localization";
import i18n from "i18next";
import en from "./locales/en.json";
import pt from "./locales/pt.json";

const resources = {
  pt: { translation: pt },
  en: { translation: en },
};

i18n.use(initReactI18next).init({
  compatibilityJSON: "v4",
  resources,
  lng: Localization.getLocales()[0]?.languageCode || "en",
  fallbackLng: "en",
  interpolation: {
    escapeValue: false,
  },
});

const i18nInstance = i18n;
export default i18nInstance;
