import React, { useState } from 'react';
import { useNavigation } from '@react-navigation/native';
import { Text, View, Image, ScrollView, TouchableOpacity, ToastAndroid } from 'react-native';
import { RoundedButton } from '../../components/RoundedButton';
import { StackNavigationProp } from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';
import useViewModel from './loginViewModel';
import { CustomTextInput } from '../../components/CustomTextInputs';
import styles from './Styles';
import { Picker } from '@react-native-picker/picker';
import { RegistroScreen } from '../Registro/registro';
import { ProductosScreen } from '../Productos/productos';
import { Alert } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';


export const LoginScreen = () => {
    const { tipoId, numId, passCliente, telefono, fechaNac, nombreUsuario, correo, onChange, login, } = useViewModel();
    const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();

    const handleLogin = async () => {
        if (tipoId === '' || numId === '' || passCliente === '') {
            ToastAndroid.show('Por favor, completa todos los campos.', ToastAndroid.SHORT);
        } else {
            const success = await login();
            if (success) {


                const userInfo = { tipoId, numId, telefono, fechaNac, nombreUsuario, correo };
                await AsyncStorage.setItem('userInfo', JSON.stringify(userInfo));

                Alert.alert('Sesion Exitosa', 'Bienvenido A tecnoventas');
                navigation.navigate('ProductosScreen');


                // Aquí puedes hacer algo en caso de inicio de sesión exitoso
            } else {
                ToastAndroid.show('El Numero De Documento O la contraseña no coinciden.', ToastAndroid.SHORT);
            }
        }
    };

    return (
        <View style={styles.container}>
            <Image
                source={require('../../../assets/tecnoventasfondo.jpg')}
                style={styles.imageBackground}
            />
            <View style={styles.logoContainer}>
                <Image
                    source={require('../../../assets/Tecnoventas.png')}
                    style={styles.logoImage}
                />
                <Text style={styles.logoText}></Text>
                <Text style={styles.logoText}></Text>
            </View>
            <View style={styles.form}>
                <ScrollView>
                    <Text style={[styles.formText, { textAlign: 'center' }]}>INICIA SESION</Text>

                    <View style={{ flexDirection: 'row', alignItems: 'center', marginBottom: -20 }}>
                        <Image
                            source={require('../../../assets/ID.png')}
                            style={{ width: 24, height: 24, marginRight: 8 }}
                        />
                        <Picker

                            style={{ color: 'white', flex: 1 }}
                            selectedValue={tipoId}
                            onValueChange={(itemValue, itemIndex) => onChange('tipoId', itemValue)}
                        >
                            <Picker.Item label="Tipo de documento" value={null} enabled={false} />
                            <Picker.Item label="C.C" value="CC" />
                            <Picker.Item label="C.E" value="CE" />
                            <Picker.Item label="T.I" value="TI" />
                        </Picker>




                    </View>

                    <CustomTextInput
                        image={require('../../../assets/ID.png')}
                        placeholder='Numero Documento'
                        value={numId}
                        keyboardType='numeric'
                        property='numId'
                        onChangeText={onChange}
                        placeholderTextColor='#CDCDCD'
                    />
                    <CustomTextInput
                        image={require('../../../assets/pass.png')}
                        placeholder='Contraseña'
                        value={passCliente}
                        keyboardType='default'
                        secureTextEntry={true}
                        property='passCliente'
                        onChangeText={onChange}
                        placeholderTextColor='#CDCDCD'
                    />
                    <View style={{ marginTop: 30 }}>
                        <RoundedButton text='ENTRAR' onPress={handleLogin} />
                    </View>
                    <View style={styles.formRegister}>
                        <Text>¿No tienes cuenta?</Text>
                        <TouchableOpacity onPress={() => navigation.navigate('RegistroScreen')}>
                            <Text style={styles.formRegisterText}>Regístrate</Text>
                        </TouchableOpacity>
                    </View>
                </ScrollView>
            </View>
        </View>
    );
};
