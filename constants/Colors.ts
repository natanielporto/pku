
export const baseColors = {
  white: "#ffffff",
  black: "#000000",
  red: '#d32f2f',
  redLight: '#ffebee',
  blue: '#007AFF',
  yellow: 'yellow'
};

export const gray = {
  background: "#f0f0f0",
  text: "#888888",
  lightDark: "#999999",
  medium: "#e0e0e0",
  dark: "#666666",
  extraDark: "#333333",
  icon: "#F2F1EF",
};

export const green = {
  primary: "#0C6941",
  light: "#f0fdf4",
  icon: "#90EE90",
  gradient: {
    start: "#0c6941",
    end: "#8bdfbb",
  },
};

export const pieChart = {
  slice1: "#002910",
  slice2: "#0d7a2f",
  slice3: "#3dbc5f",
  slice4: "#5fd67f",
};

export const transparent = {
  black: {
    light: "rgba(0, 0, 0, 0.05)",
    medium: "rgba(0, 0, 0, 0.4)",
  },
  white: {
    light: "rgba(255, 255, 255, 0.1)",
  },
};

export const shadow = {
  color: baseColors.black,
  offset: { width: 0, height: 1 },
  opacity: 0.1,
  radius: 2,
  elevation: 2,
};

const tintColorLight = green.primary;
const tintColorDark = gray.background;

export default {
  light: {
    text: baseColors.black,
    background: gray.background,
    tint: tintColorLight,
    tabIconDefault: gray.medium,
    tabIconSelected: tintColorLight,
  },
  dark: {
    text: gray.background,
    background: baseColors.black,
    tint: tintColorDark,
    tabIconDefault: gray.medium,
    tabIconSelected: tintColorDark,
  },
  gray,
  green,
  pieChart,
  transparent,
  shadow,
  base: baseColors,
};
