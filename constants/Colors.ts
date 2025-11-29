/**
 * Paleta de cores centralizada do aplicativo
 *
 * Como usar:
 * import Colors from '@/constants/Colors';
 *
 * backgroundColor: Colors.gray.background
 * color: Colors.gray.text
 */

// Cores base
export const baseColors = {
  white: "#ffffff",
  black: "#000000",
};

// Tons de cinza
export const gray = {
  // Fundo principal
  background: "#f0f0f0",

  // Texto
  text: "#888888", // Cinza escuro para texto

  // Tons intermediários (para cards, backgrounds, etc)
  light: "#fafafa", // Cinza muito claro (fundo de cards)
  mediumLight: "#f5f5f5", // Cinza claro
  medium: "#e0e0e0", // Cinza médio
  mediumDark: "#cccccc", // Cinza médio-escuro
  dark: "#666666", // Cinza escuro

  // Para ícones e elementos decorativos
  icon: "#F2F1EF", // Cinza muito claro para ícones
};

// Cores verdes (tema principal)
export const green = {
  primary: "#0C6941", // Verde principal (tint)
  light: "#f0fdf4", // Verde muito claro (green-50)
  icon: "#90EE90", // Verde claro para ícones
  gradient: {
    start: "#0c6941",
    end: "#8bdfbb",
  },
};

// Cores do pie chart (aminoácidos)
export const pieChart = {
  slice1: "#002910", // Verde muito escuro
  slice2: "#0d7a2f", // Verde escuro
  slice3: "#3dbc5f", // Verde médio
  slice4: "#5fd67f", // Verde claro
};

// Cores com transparência
export const transparent = {
  black: {
    light: "rgba(0, 0, 0, 0.05)", // Preto muito transparente
    medium: "rgba(0, 0, 0, 0.4)", // Preto médio transparente
    dark: "rgba(0, 0, 0, 0.8)", // Preto escuro transparente
  },
  white: {
    light: "rgba(255, 255, 255, 0.1)", // Branco transparente
    medium: "rgba(255, 255, 255, 0.8)", // Branco médio transparente
  },
};

// Sombras
export const shadow = {
  color: "#000000",
  offset: { width: 0, height: 1 },
  opacity: 0.1,
  radius: 2,
  elevation: 2,
};

// Exportação padrão (mantendo compatibilidade com código antigo)
const tintColorLight = green.primary;
const tintColorDark = gray.background;

export default {
  light: {
    text: baseColors.black,
    background: gray.background,
    tint: tintColorLight,
    tabIconDefault: gray.mediumDark,
    tabIconSelected: tintColorLight,
  },
  dark: {
    text: gray.background,
    background: baseColors.black,
    tint: tintColorDark,
    tabIconDefault: gray.mediumDark,
    tabIconSelected: tintColorDark,
  },
  // Novas cores organizadas
  gray,
  green,
  pieChart,
  transparent,
  shadow,
  base: baseColors,
};
