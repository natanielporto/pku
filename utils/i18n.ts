import i18n from "../i18n";

/**
 * Troca o idioma do app
 * @param lang - Código do idioma ('pt' ou 'en')
 */
export const changeLanguage = (lang: "pt" | "en") => {
  i18n.changeLanguage(lang);
};

/**
 * Retorna o idioma atual
 */
export const getCurrentLanguage = (): string => {
  return i18n.language;
};
