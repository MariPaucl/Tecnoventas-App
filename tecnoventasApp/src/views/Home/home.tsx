import React from "react";
import { useNavigation } from "@react-navigation/native";
import {
  StyleSheet,
  Text,
  View,
  ScrollView,
  ImageBackground,
  Image,
  Dimensions,
  TouchableOpacity,
} from "react-native";
import { StackNavigationProp } from "@react-navigation/stack";
import { RootStackParamList } from "../../../App";
import styles from "./Styles";

export const HomeScreen = () => {
  const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();

  return (
    <ImageBackground
      source={require("../../../assets/fondo4.jpg")}
      style={styles.background}
    >
      <View style={styles.container}>
        <Text style={styles.header}>Tecnoventas</Text>
        <Image
          source={require("../../../assets/Tecnoventas.png")}
          style={styles.logo}
        />
        <Text style={styles.header}>
          Descubre tecnología de calidad, al alcance de todos
        </Text>
        <ScrollView
          horizontal={true}
          pagingEnabled={true}
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={[styles.scrollViewContent]}
          scrollEventThrottle={16}
        >
          <View style={styles.page}>
            <Image
              source={require("../../../assets/seguridad.jpg")}
              style={styles.logopage}
            />
            <Text style={styles.pageText}>
              ¡En Tecnoventas, encontrarás la respuesta a tu pregunta! Analiza,
              compara y elige con confianza.
            </Text>
          </View>
          <View style={styles.page}>
            <Image
              source={require("../../../assets/tecnologia.png")}
              style={styles.logopage}
            />
            <Text style={styles.pageText}>
              Tecnoventas: Calidad sin límites. Encuentra lo mejor al mejor
              precio.
            </Text>
          </View>
          <View style={styles.page}>
            <Image
              source={require("../../../assets/menu-4.jpg")}
              style={styles.logopage}
            />
            <Text style={styles.pageText}>
              "¡Tu satisfacción y seguridad son nuestra prioridad! Tu bolsillo
              está seguro con nosotros. ¡Descubre la mejor opción para ti!"
            </Text>
          </View>
        </ScrollView>

        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate("RegistroScreen")}
        >
          <Text style={styles.text}>Registrarse</Text>
        </TouchableOpacity>
      </View>
    </ImageBackground>
  );
};
