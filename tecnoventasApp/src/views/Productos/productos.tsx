import React, { useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import { Text, View, Image, ScrollView, TouchableOpacity, Linking } from 'react-native';
import { StackNavigationProp } from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';
import { Picker } from '@react-native-picker/picker';
import styles from './Styles';

const categorias = [
    { label: 'Celulares', value: '1' },
    { label: 'Portátiles', value: '2' },
    { label: 'Computadores', value: '3' },
    { label: 'Tablets', value: '4' },
    { label: 'Audífonos', value: '5' },
    { label: 'Parlantes', value: '6' }
];

export const ProductosScreen = () => {
    const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();
    const [selectedCategory, setSelectedCategory] = useState<string | undefined>(undefined);

    const handleIngresaAquiClick = () => {
        Linking.openURL('http://localhost/Tecnoventas-proyect/');
    };

    return (
        <View style={styles.container}>
            <Image source={require('../../../assets/fondo.jpg')} style={styles.imageBackground} />
            <View style={styles.header}>
                <Text style={styles.title}>TIENDA</Text>
                <View style={styles.pickerContainer}>
                <Picker
                    selectedValue={selectedCategory}
                    onValueChange={(itemValue) => setSelectedCategory(itemValue)}
                    style={styles.picker}
                    dropdownIconColor={'#790bcd'}
                >
                    {categorias.map((categoria, index) => (
                        <Picker.Item key={index} label={categoria.label} value={categoria.value} />
                    ))}
                </Picker>
                </View>
                <TouchableOpacity
                    style={styles.boton1}
                    onPress={() => {
                        console.log('Categoría seleccionada:', selectedCategory);
                    }}
                >
                    <Text style={styles.buttonText}>VER PRODUCTOS</Text>
                </TouchableOpacity>
                <ScrollView style={styles.productosContainer}>
                    <TouchableOpacity style={styles.card}>
                        <Image
                            source={require('../../../assets/Productos/samsungs21fe.png')}
                            style={styles.cardImage}
                        />
                        <View style={styles.cardContent}>
                            <Text style={styles.cardTitle}>Samsung S21 Fe</Text>
                            <Text style={styles.cardSubtitle}>1959000</Text>
                            <Text style={styles.cardDescription}>Disponible</Text>
                        </View>
                    </TouchableOpacity>
                </ScrollView>
            </View>
            <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('PerfilScreen')}>
                <Text style={styles.buttonText}>Mi Perfil</Text>
            </TouchableOpacity>
            <View style={styles.enlace}>
                <Text style={styles.enlaceText}>¿Quieres comprar estos productos?</Text>
                <TouchableOpacity onPress={handleIngresaAquiClick}>
                    <Text style={styles.enlaceText2}>
                        Ingresa Aquí
                    </Text>
                </TouchableOpacity>
            </View>
        </View>
    );
};

export default ProductosScreen;