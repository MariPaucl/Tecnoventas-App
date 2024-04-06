import React, {useState} from 'react'
import { useNavigation } from '@react-navigation/native';
import { Text, View, Image, ScrollView, TouchableOpacity, Alert } from 'react-native';
import { RoundedButton } from '../../components/RoundedButton';
import { StackNavigationProp} from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';
import useViewModel from './ViewModel';
import { CustomTextInput } from '../../components/CustomTextInputs';
import styles from './Styles';

export const ActualizarScreen = () => {
    const {nomCliente, apeCliente, fechaNac, telefono, correo, numId, onChange, update } = useViewModel();

    const handleUpdate = async () => {
        try {
            await update();
            Alert.alert('Actualizacion Exitosa', 'Has actualizado datos correctamente');
            navigation.navigate('PerfilScreen'); 
        } catch (error) {
            Alert.alert('Error', 'Hubo un error al Actualizar. Por favor, inténtalo de nuevo.');
            console.error('Error en la actualizacion:', error);
        }
    };
    const navigation =
    useNavigation<StackNavigationProp<RootStackParamList>>();

    return (
        <View style={styles.container}>
            <Image
            source={ require('../../../assets/fondopru.jpeg')}
            style={styles.imageBackground}
            />
        <View style={styles.logoContainer}>
            <Image
            source={require('../../../assets/Tecnoventas.png')}
            style={styles.logoImage}
            />
            <Text style={styles.logoText}>Editar datos</Text>
            </View>
            <View style={styles.form}>
            <Text style={styles.formText}>Datos del cliente <Image
            source={require('../../../assets/lapiz.png')}
            style={styles.logoador}
            /></Text>
            <ScrollView>
            <CustomTextInput
                image={require('../../../assets/user.png')}
                placeholder='Nombre'
                keyboardType='default'
                property='nomCliente'
                onChangeText={onChange}
                value={nomCliente}
            />
            <CustomTextInput
                image={require('../../../assets/user.png')}
                placeholder='Apellido'
                keyboardType='default'
                property='apeCliente'
                onChangeText={onChange}
                value={apeCliente}
            />
            <CustomTextInput
                image={require('../../../assets/email.png')}
                placeholder='Correo Electronico'
                keyboardType='email-address'
                property='correo'
                onChangeText={onChange}
                value={correo}
            />
            <CustomTextInput
                image={require('../../../assets/tel.png')}
                placeholder='Telefono'
                keyboardType='numeric'
                property='telefono'
                onChangeText={onChange}
                value={telefono}
            />
            <CustomTextInput
                image={require('../../../assets/date.png')}
                placeholder='Fecha Nacimiento'
                keyboardType='default'
                property='fechaNac'
                onChangeText={onChange}
                value={fechaNac}
            />
            <CustomTextInput
                image={require('../../../assets/date.png')}
                placeholder='numId'
                keyboardType='default'
                property='numId'
                onChangeText={onChange}
                value={numId}
            />
            <View style={{marginTop: 30}}>
                <RoundedButton text='Guardar' onPress={handleUpdate}/>
            </View>
            </ScrollView>
            </View>
        </View>
        );
}