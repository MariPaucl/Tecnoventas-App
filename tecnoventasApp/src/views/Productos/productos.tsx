import React, {useState} from 'react'
import { useNavigation } from '@react-navigation/native';
import { Text, View, Image, TextInput, ScrollView, TouchableOpacity } from 'react-native';
import { StackNavigationProp} from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';
import styles from './Styles';

export const ProductosScreen = () => {
    const navigation =
    useNavigation<StackNavigationProp<RootStackParamList>>();

    return (
        <View style={styles.container}>
            <Image
            source={ require('../../../assets/fondo.jpg')}
            style={styles.imageBackground}
            />
        <View style={styles.header}>
            <Text style={styles.title}>TIENDA</Text>
            <TextInput
                style={styles.inputCategory}
                placeholder="Escribe la categoria que deseas ver"
            />
            <TouchableOpacity
            style={styles.boton1}
            onPress={() => {}}
            >
            <Text style={styles.buttonText}>VER PRODUCTOS</Text>
            </TouchableOpacity>
            <ScrollView style={styles.productosContainer}>
            <TouchableOpacity style={styles.card}>
                <Image
                source={ require('../../../assets/Productos/samsungs21fe.png')}
                style={styles.cardImage}
                />
                <View style={styles.cardContent}>
                <Text style={styles.cardTitle}>Samsung S21 Fe</Text>
                <Text style={styles.cardSubtitle}>1959000</Text>
                <Text style={styles.cardDescription}>Disponible</Text>
                </View>
            </TouchableOpacity>
            <TouchableOpacity style={styles.card}>
                <Image
                source={ require('../../../assets/Productos/samsungs9plus.png')}
                style={styles.cardImage}
                />
                <View style={styles.cardContent}>
                <Text style={styles.cardTitle}>Samsung S9+ 5G</Text>
                <Text style={styles.cardSubtitle}>1095000</Text>
                <Text style={styles.cardDescription}>Disponible</Text>
                </View>
            </TouchableOpacity>
            </ScrollView>
        </View>
        <TouchableOpacity
            style={styles.button}
            onPress={() => navigation.navigate('PerfilScreen')}
        >
        <Text style={styles.buttonText}>Mi Perfil</Text>
        </TouchableOpacity>
        <View style={styles.enlace}>
            <Text style={styles.enlaceText}>¿Quieres comprar estos productos?</Text>
            <TouchableOpacity><Text style={styles.enlaceText2} onPress={() => {}}>Ingresa Aquí</Text>
            </TouchableOpacity>
        </View>
        </View>
        );
    }

    export default ProductosScreen;