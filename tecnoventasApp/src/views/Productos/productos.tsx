import React, { useState, useEffect } from 'react';
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
    const [productos, setProductos] = useState<any[]>([]);

    useEffect(() => {
        if (selectedCategory) {
            fetchProductos(selectedCategory);
        }
    }, [selectedCategory]);

    const fetchProductos = async (codigoCat: string) => {
        try {
            const response = await fetch('http://192.168.100.115:3000/api/productos/visualizar', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ codigoCat })
            });
            const data = await response.json();
            setProductos(data);
            console.log('Categoría Seleccionada: ', codigoCat);
            console.log('Prodcutos: ', data);
        } catch (error) {
            console.error('Error fetching productos:', error);
        }
    };

    const handleIngresaAquiClick = () => {
        Linking.openURL('http://localhost/Tecnoventas-proyect/');
    };

    return (
        <View style={styles.container}>
            <Image source={require('../../../assets/fondo.jpg')} style={styles.imageBackground} />
            <View style={styles.header}>
                <Text style={styles.title}>PRODUCTOS</Text>
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
                <View style={styles.boton1}>
                    <Text style={{ color: 'white', fontWeight: 'bold', fontSize: 13 }}>SELECCIONA LA CATEGORIA ⬆</Text>
                </View>
                <ScrollView style={styles.productosContainer}>
                    {productos.map((producto, index) => (
                        <TouchableOpacity key={index} style={styles.card}>
                            <Image
                                source={require(`../../../assets/Productos/producto.png`)}
                                style={styles.productImage}
                            />
                            <View style={styles.cardContent}>
                                <Text numberOfLines={2} style={styles.productName}>{producto.nomProd}</Text>
                                <Text style={styles.productPrice}>{producto.precio}</Text>
                                <Text style={styles.productStatus}>{producto.estProd}</Text>
                            </View>
                        </TouchableOpacity>
                    ))}
                </ScrollView>
            </View>
            <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('PerfilScreen')}>
                <Text style={styles.buttonText}>Mi Perfil</Text>
            </TouchableOpacity>
            <View style={styles.enlace}>
                <Text style={styles.enlaceText}>¿Quieres comprar estos productos?</Text>
                <TouchableOpacity onPress={handleIngresaAquiClick}>
                    <Text style={styles.enlaceText2}>Ingresa Aquí</Text>
                </TouchableOpacity>
            </View>
        </View>
    );
};

export default ProductosScreen;