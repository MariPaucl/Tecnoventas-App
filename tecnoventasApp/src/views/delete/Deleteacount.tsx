import React, { useState } from "react";
import { useNavigation } from "@react-navigation/native";
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  TouchableOpacity,
  ImageBackground,
  Image,
  Alert,
} from "react-native";
import { StackNavigationProp } from "@react-navigation/stack";
import { RootStackParamList } from "../../../App";
import styles from "./styles";
import { useViewModel } from "./ViewModel";

const DeleteScreen = () => {
  const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();
  const { values, onChange, deleteAccount, error } = useViewModel(); // Usa destructuring para obtener valores y métodos de useViewModel

  const handleConfirm = async () => {
    try {
      const result = await deleteAccount(); // Llama al método deleteAccount de useViewModel
      if (result === 'deleted') {
        Alert.alert("Éxito", "Tu cuenta ha sido eliminada exitosamente.");
        navigation.navigate("HomeScreen");
      } else if (result === 'error') {
        Alert.alert("Error", "No se pudo eliminar la cuenta. Por favor, inténtalo de nuevo.");
      }
    } catch (error) {
      Alert.alert("Error", error.message);
    }
  };

  return (
    <ImageBackground
      source={require("../../../assets/fondok.jpg")}
      style={styles.background}
    >
      <View style={styles.container}>
        <View style={styles.container}>
          <Text style={styles.header}>¿Estás seguro de eliminar tu cuenta?</Text>
          <TextInput
            style={styles.input}
            placeholder="Escribe tu correo"
            value={values.correo}
            onChangeText={(text) => onChange('correo', text)}
          />
          <Text style={styles.secondaryText}>Si es así, por favor escribe tu correo para confirmar.</Text>
        </View>
        <TouchableOpacity style={styles.button} onPress={handleConfirm}>
          <Text style={styles.text}>Confirmar</Text>
        </TouchableOpacity>
      </View>
    </ImageBackground>
  );
};
export default DeleteScreen;
