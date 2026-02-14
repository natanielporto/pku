import "dotenv/config";

export default {
  expo: {
    name: "mrpku-new",
    slug: "mrpku-new",
    version: "1.0.0",
    orientation: "portrait",
    icon: "./assets/images/icon.png",
    scheme: "mrpkunew",
    userInterfaceStyle: "automatic",
    newArchEnabled: true,
    // Deep linking configuration for OAuth
    intentFilters: [
      {
        action: "VIEW",
        autoVerify: true,
        data: [
          {
            scheme: "mrpkunew",
            host: "auth",
            pathPrefix: "/callback",
          },
        ],
        category: ["BROWSABLE", "DEFAULT"],
      },
    ],
    splash: {
      image: "./assets/images/splash-icon.png",
      resizeMode: "contain",
      backgroundColor: "#ffffff",
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
        backgroundColor: "#ffffff",
      },
      edgeToEdgeEnabled: true,
      predictiveBackGestureEnabled: false,
    },
    web: {
      bundler: "metro",
      output: "static",
      favicon: "./assets/images/favicon.png",
    },
    plugins: ["expo-router"],
    experiments: {
      typedRoutes: true,
    },
  },
};
