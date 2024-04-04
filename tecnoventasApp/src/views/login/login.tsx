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

export const LoginScreen = () => {
    const { Tipo_Documento, Numero_Documento, passCliente, onChange, login } = useViewModel();
    const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();
    const [tipoDocumento, setTipoDocumento] = useState<string>('');

    const handleLogin = async () => {
        if (Tipo_Documento === '' || Numero_Documento === '' || passCliente === '') {
            ToastAndroid.show('Por favor, completa todos los campos.', ToastAndroid.SHORT);
        } else {
            const success = await login();
            if (success) {
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
                            style={{ flex: 1 }} // Asegura que el picker ocupe todo el espacio restante
                            selectedValue={tipoDocumento}
                            onValueChange={(itemValue, itemIndex) => setTipoDocumento(itemValue)} >

                            <Picker.Item label="Tipo de documento" value={null} enabled={false} />
                            <Picker.Item label="Cedula" value="Cedula" />
                            <Picker.Item label="Tarjeta de Identidad" value="Tarjeta de Identidad" />
                        </Picker>
                    </View>

                    <CustomTextInput
                        image={require('../../../assets/ID.png')}
                        placeholder='Numero-Documento'
                        value={Numero_Documento}
                        keyboardType='numeric'
                        property='Numero_Documento'
                        onChangeText={onChange}
                    />
                    <CustomTextInput
                        image={require('../../../assets/pass.png')}
                        placeholder='contraseña'
                        value={passCliente}
                        keyboardType='default'
                        secureTextEntry={true}
                        property='passCliente'
                        onChangeText={onChange}
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
                    <View style={styles.formRegister}>
                        <Text>ver</Text>
                        <TouchableOpacity onPress={() => navigation.navigate('PerfilScreen')}>
                            <Text style={styles.formRegisterText}>Perfil</Text>
                        </TouchableOpacity>
                    </View>
                </ScrollView>
            </View>
        </View>
    );
};
