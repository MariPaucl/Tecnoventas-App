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
} from "react-native";
import { StackNavigationProp } from "@react-navigation/stack";
import { RootStackParamList } from "../../../App";
import styles from "./styles";
import { useViewModel } from "./ViewModel";

const DeleteScreen = () => {
  const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();
  const [email, setEmail] = useState("");
  const { deleteAccount } = useViewModel();

  const handleConfirm = async () => {
    try {
      await deleteAccount();
      alert(`Cuenta eliminada para el correo: ${email}`);
      navigation.navigate(Home); 
    } catch (error) {
      alert('Error al eliminar la cuenta del cliente');
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
            value={email}
            onChangeText={(text) => setEmail(text)}
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
