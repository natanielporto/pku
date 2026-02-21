import React, { useCallback } from "react";
import {
  ActivityIndicator,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Feather } from "@expo/vector-icons";
import { useAuth } from "@/contexts/AuthContext";
import { useTranslation } from "react-i18next";
import { supabase } from "@/services/supabase";
import { useFocusEffect, router } from "expo-router";
import i18n from "@/i18n";
import AsyncStorage from "@react-native-async-storage/async-storage";
import MaterialIcons from '@expo/vector-icons/MaterialIcons';

export default function ProfileScreen() {
  const { t } = useTranslation();

  const { user, profile, loading, signOut, refreshProfile } = useAuth();
  const [isLoggingOut, setIsLoggingOut] = React.useState(false);
  const [isEditingName, setIsEditingName] = React.useState(false);
  const [newName, setNewName] = React.useState(profile?.full_name ?? "");
  const [isSavingName, setIsSavingName] = React.useState(false);
  const [isUploadingAvatar, setIsUploadingAvatar] = React.useState(false);
  const [numberOfLikes, setNumberOfLikes] = React.useState(0);
  const [numberOfDislikes, setNumberOfDislikes] = React.useState(0);

  const handleNumberOfLikes = async () => {
    try {
      const { data, error } = await supabase
        .from('recipe_likes')
        .select('recipe_id')
        .eq('user_id', user?.id);

        console.log(data)
      if (error) {
        console.error(t('account.error.numberOfLikes'), error);
        alert(t('account.error.numberOfLikesDescription'));
        return;
      }

      setNumberOfLikes(data?.length);
    } catch (error) {
      console.error(t('account.error.numberOfLikes'), error);
      alert(t('account.error.numberOfLikesDescription'));
      return 0;
    }
  }

    const handleNumberOfDislikes = async () => {
    try {
      const { data, error } = await supabase
        .from('recipe_dislikes')
        .select('recipe_id')
        .eq('user_id', user?.id);

      if (error) {
        console.error(t('account.error.numberOfDislikes'), error);
        alert(t('account.error.numberOfDislikesDescription'));
        return;
      }

      setNumberOfDislikes(data?.length);
    } catch (error) {
      console.error(t('account.error.numberOfDislikes'), error);
      alert(t('account.error.numberOfDislikesDescription'));
      return 0;
    }
  }

  useFocusEffect(
    useCallback(() => {
      handleNumberOfLikes();
      handleNumberOfDislikes();
    }, [])
  );

  const handleLogout = async () => {
    setIsLoggingOut(true);
    try {
      await signOut();
      router.replace("/onboarding");
    } catch (error) {
      console.error(t('account.error.logout'), error);
    } finally {
      setIsLoggingOut(false);
    }
  };

  const handleEditName = () => {
    setNewName(profile?.full_name ?? "");
    setIsEditingName(true);
  };

  const handleSaveName = async () => {
    if (!user?.id) return;

    setIsSavingName(true);
    try {
      const { updateProfile } = await import("@/services/profile");
      const { error } = await updateProfile(user.id, { full_name: newName });

      if (error) {
        console.error(t('account.error.updateName'), error);
        alert(t("account.error.updateNameDescription"));
        return;
      }

      await refreshProfile();
      setIsEditingName(false);
    } catch (error) {
      console.error(t('account.error.savingName'), error);
      alert(t('account.error.saveNameDescription'));
    } finally {
      setIsSavingName(false);
    }
  };

  const handleCancelEdit = () => {
    setNewName(profile?.full_name ?? "");
    setIsEditingName(false);
  };

  const handleLanguageChange = async () => {
    i18n.changeLanguage(i18n.language === "pt" ? "en" : "pt");
    await AsyncStorage.setItem("language", i18n.language);
  };

  // const handleChangeAvatar = async () => {
  //   // Por enquanto, vamos apenas mostrar um alerta
  //   // Para implementar upload de imagem, precisamos de:
  //   // 1. expo-image-picker (selecionar foto)
  //   // 2. Supabase Storage (hospedar a imagem)
  //   // 3. Atualizar avatar_url no perfil

  //   alert(
  //     "Funcionalidade de upload de avatar será implementada em breve!\n\nPrecisa configurar:\n1. expo-image-picker\n2. Supabase Storage"
  //   );
  // };

  const renderAvatarContent = () => {
    if (isUploadingAvatar) {
      return <ActivityIndicator size="large" color="#0C6941" />;
    }

    if (profile?.avatar_url && profile.avatar_url.trim() !== "") {
      return (
        <Image source={{ uri: profile.avatar_url }} style={styles.avatar} />
      );
    }

    return <Feather name="user" size={60} color="#0C6941" />;
  };

  if (loading) {
    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#0C6941" />
          <Text style={styles.loadingText}>{t('account.loadingProfile')}</Text>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView contentContainerStyle={styles.content}>
        <View style={styles.header}>
          <TouchableOpacity
            style={styles.avatarContainer}
            // onPress={handleChangeAvatar}
            disabled={isUploadingAvatar}
          >
            <View style={styles.avatarCircle}>{renderAvatarContent()}</View>
            {/* <View style={styles.avatarOverlay}>
              <Feather name="camera" size={24} color="#fff" />
            </View> */}
          </TouchableOpacity>
          <Text style={styles.title}>{t('account.myProfile')}</Text>
          {/* <Text style={styles.subtitle}>Toque no avatar para alterar</Text> */}
        </View>

        <View style={styles.infoSection}>
          <View style={styles.infoItem}>
            <Text style={styles.label}>{t('account.email')}</Text>
            <Text style={styles.value}>{user?.email || "Não informado"}</Text>
          </View>

          <View style={styles.infoItemName}>
            <View style={{ flex: 1, marginRight: 12 }}>
              <Text style={styles.label}>{t('account.name')}</Text>
              {isEditingName ? (
                <TextInput
                  style={[
                    styles.value,
                    {
                      fontSize: 16,
                      backgroundColor: "#e8f5e9",
                      padding: 10,
                      borderRadius: 10,
                      width: "100%",
                    },
                  ]}
                  value={newName}
                  onChangeText={setNewName}
                  placeholder={t('account.personalize.typeYourName')}
                />
              ) : (
                <Text style={styles.value}>
                  {profile?.full_name || t('account.personalize.notInformed')}
                </Text>
              )}
            </View>

            {isEditingName ? (
              <View style={styles.editButtons}>
                <TouchableOpacity
                  onPress={handleCancelEdit}
                  style={styles.cancelButton}
                  disabled={isSavingName}
                >
                  <Feather name="x" size={20} color="#d32f2f" />
                </TouchableOpacity>
                <TouchableOpacity
                  onPress={handleSaveName}
                  style={styles.saveButton}
                  disabled={isSavingName}
                >
                  {isSavingName ? (
                    <ActivityIndicator size="small" color="#fff" />
                  ) : (
                    <Feather name="check" size={20} color="#fff" />
                  )}
                </TouchableOpacity>
              </View>
            ) : (
              <TouchableOpacity onPress={handleEditName}>
                <Feather name="edit" size={20} color="#0C6941" />
              </TouchableOpacity>
            )}
          </View>

          <View style={styles.infoItem}>
            <Text style={styles.label}>{t('account.likedRecipies')}</Text>
            <Text style={styles.value}>{numberOfLikes}</Text>
          </View>

          <View style={styles.infoItem}>
            <Text style={styles.label}>{t('account.dislikedRecipies')}</Text>
            <Text style={styles.value}>{numberOfDislikes}</Text>
          </View>

          <View style={styles.infoItem}>
            <Text style={styles.label}>{t('account.registeredSince')}</Text>
            <Text style={styles.value}>
              {profile?.created_at
                ? new Date(profile.created_at).toLocaleDateString("pt-BR")
                : "Não disponível"}
            </Text>
          </View>

          <View style={styles.infoItem}>
            <Text style={styles.label}>{t('account.language')}</Text>
            <TouchableOpacity onPress={handleLanguageChange} style={styles.languageContainer}>
              <Text style={styles.value}>
                {i18n.language === "pt" ? "Português" : "English"} 
              </Text>
              <MaterialIcons name="change-circle" size={24} color="#0C6941" />
            </TouchableOpacity>
          </View>
        </View>

        <TouchableOpacity
          style={styles.logoutButton}
          onPress={handleLogout}
          disabled={isLoggingOut}
        >
          {isLoggingOut ? (
            <ActivityIndicator color="#fff" />
          ) : (
            <>
              <Feather name="log-out" size={20} color="#fff" />
              <Text style={styles.logoutButtonText}>{t('account.logout')}</Text>
            </>
          )}
        </TouchableOpacity>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f5f5f5",
  },
  loadingContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  loadingText: {
    marginTop: 16,
    fontSize: 16,
    color: "#666",
  },
  content: {
    padding: 20,
  },
  header: {
    alignItems: "center",
    marginBottom: 30,
    paddingVertical: 20,
  },
  avatarContainer: {
    width: 120,
    height: 120,
    marginBottom: 16,
    position: "relative",
    overflow: "visible",
  },
  avatarCircle: {
    width: 120,
    height: 120,
    borderRadius: 60,
    backgroundColor: "#e8f5e9",
    justifyContent: "center",
    alignItems: "center",
    overflow: "hidden",
  },
  avatar: {
    width: 120,
    height: 120,
    borderRadius: 60,
  },
  avatarOverlay: {
    position: "absolute",
    bottom: 0,
    right: 0,
    backgroundColor: "#0C6941",
    borderRadius: 20,
    width: 40,
    height: 40,
    justifyContent: "center",
    alignItems: "center",
    borderWidth: 3,
    borderColor: "#fff",
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#0C6941",
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 14,
    color: "#666",
  },
  infoSection: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 20,
    marginBottom: 20,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  infoItem: {
    marginBottom: 20,
  },
  infoItemName: {
    marginBottom: 20,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
  },
  editButtons: {
    flexDirection: "row",
    gap: 8,
    height: '100%',
    alignItems: 'flex-end',
    justifyContent: 'center',
    marginBottom: 8
  },
  cancelButton: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: "#ffebee",
    justifyContent: "center",
    alignItems: "center",
  },
  saveButton: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: "#0C6941",
    justifyContent: "center",
    alignItems: "center",
  },
  label: {
    fontSize: 14,
    color: "#666",
    marginBottom: 4,
    fontWeight: "600",
  },
  value: {
    fontSize: 16,
    color: "#333",
  },
  valueSmall: {
    fontSize: 12,
    color: "#999",
    fontFamily: "monospace",
  },
  logoutButton: {
    backgroundColor: "#d32f2f",
    borderRadius: 12,
    padding: 16,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  logoutButtonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "600",
  },
  languageContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
});
