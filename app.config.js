import "dotenv/config";

export default {
  expo: {
    name: "mrpku",
    slug: "mrpku",
    version: "1.0.0",
    orientation: "portrait",
    icon: "./assets/images/icon.png",
    scheme: "mrpku",
    userInterfaceStyle: "automatic",
    newArchEnabled: true,
    // Deep linking configuration for OAuth
    intentFilters: [
      {
        action: "VIEW",
        autoVerify: true,
        data: [
          {
            scheme: "mrpku",
            host: "auth",
            pathPrefix: "/callback",
          },
        ],
        category: ["BROWSABLE", "DEFAULT"],
      },
    ],
    splash: {
      backgroundColor: "#0C6941",
      resizeMode: "contain",
    },
    extra: {
      SUPA_URL: process.env.SUPA_URL || "",
      SUPA_KEY: process.env.SUPA_KEY || "",
      SUPA_ANON_KEY: process.env.SUPA_ANON_KEY || "",
    },
    ios: {
      supportsTablet: true,
    },
    android: {
      adaptiveIcon: {
        foregroundImage: "./assets/images/adaptive-icon.png",
        backgroundColor: "#0C6941",
      },
      edgeToEdgeEnabled: true,
      predictiveBackGestureEnabled: false,
    },
    web: {
      bundler: "metro",
      output: "static",
      favicon: "./assets/images/favicon.png",
    },
    plugins: [
      "expo-router",
      [
        "expo-splash-screen",
        {
          backgroundColor: "#0C6941",
          image: null,
          resizeMode: "contain",
        },
      ],
    ],
    experiments: {
      typedRoutes: true,
    },
  },
};
