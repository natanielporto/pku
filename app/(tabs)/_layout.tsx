import React from "react";
import { AntDesign, Entypo } from "@expo/vector-icons";
import { Tabs } from "expo-router";
import { useColorScheme } from "@/components/useColorScheme";
import Colors from "@/constants/Colors";

// You can explore the built-in icon families and icons on the web at https://icons.expo.fyi/
function TabBarIcon({
  name,
  color,
}: {
  name:
    | React.ComponentProps<typeof Entypo>["name"]
    | React.ComponentProps<typeof AntDesign>["name"];
  color: string;
}) {
  return name === "question-circle" ? (
    <AntDesign
      name={name as React.ComponentProps<typeof AntDesign>["name"]}
      color={color}
      size={24}
    />
  ) : (
    <Entypo
      name={name as React.ComponentProps<typeof Entypo>["name"]}
      color={color}
      size={24}
    />
  );
}

export default function TabLayout() {
  const colorScheme = useColorScheme();

  return (
    <Tabs
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
          tabBarIcon: ({ color }) => <TabBarIcon name="home" color={color} />,
        }}
      />
      <Tabs.Screen
        name="calculator"
        options={{
          tabBarIcon: ({ color }) => (
            <TabBarIcon name="calculator" color={color} />
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
          tabBarIcon: ({ color }) => (
            <TabBarIcon name="question-circle" color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          tabBarIcon: ({ color }) => <TabBarIcon name="user" color={color} />,
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
