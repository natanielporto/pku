import React from "react";
import { AntDesign, Entypo, Feather } from "@expo/vector-icons";
import { Tabs } from "expo-router";
import { useColorScheme } from "@/components/useColorScheme";
import Colors from "@/constants/Colors";
import { useTranslation } from "react-i18next";

export default function TabLayout() {
  const colorScheme = useColorScheme();
  const { t, i18n } = useTranslation();
  
  return (
    <Tabs
      key={i18n.language}
      screenOptions={{
        tabBarActiveTintColor: Colors[colorScheme ?? "light"].tint,
        // Disable the static render of the header on web
        // to prevent a hydration error in React Navigation v6.
        headerShown: false,
        // tabBarIconStyle: {
        //   marginTop: 4,
        // },
        // tabBarLabelStyle: {
        //   marginBottom: 4,
        // },
      }}
    >
      <Tabs.Screen
        name="home"
        options={{
          title: t("tabs.home"),
          tabBarIcon: ({ color }) => <Entypo name="home" color={color} size={24} />,
        }}
      />
      <Tabs.Screen
        name="calculator"
        options={{
          title: t("tabs.calculator"),
          tabBarIcon: ({ color }) => (
            <Entypo name="calculator" color={color} size={24} />
          ),
        }}
      />
      {/* <Tabs.Screen
        name="book"
        options={{
          title: t("tabs.book"),
          tabBarIcon: ({ color }) => <TabBarIcon name="book" color={color} />,
        }}
      /> */}
      <Tabs.Screen
        name="faq"
        options={{
          title: t("tabs.faq"),
          tabBarIcon: ({ color }) => (
            <AntDesign name="question-circle" color={color} size={24} />
          ),
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          title: t("tabs.profile"),
          tabBarIcon: ({ color }) => <Feather name="user" color={color} size={24} />,
        }}
      />
      <Tabs.Screen
        name="recipe-list"
        options={{
          href: null,
        }}
      />
      <Tabs.Screen
        name="recipe-details"
        options={{
          href: null,
        }}
      />
    </Tabs>
  );
}
