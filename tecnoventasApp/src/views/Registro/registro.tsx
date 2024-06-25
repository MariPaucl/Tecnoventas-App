import React, { useState } from 'react'
import { useNavigation } from '@react-navigation/native';
import { Text, View, Image, ScrollView, TouchableOpacity, Alert, ToastAndroid } from 'react-native';
import { RoundedButton } from '../../components/RoundedButton';
import { StackNavigationProp } from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';
import useViewModel from './ViewModel';
import { CustomTextInput } from '../../components/CustomTextInputs';
import { Picker } from '@react-native-picker/picker';
import DateTimePicker from '@react-native-community/datetimepicker';
import styles from './Styles';

export const RegistroScreen = () => {
    const { tipoId, numId, nomCliente, apeCliente, fechaNac, telefono, correo, passCliente, onChange, register } = useViewModel();
    const [showDatePicker, setShowDatePicker] = useState(false);
    const [selectedDate, setSelectedDate] = useState(new Date());
    const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();

    // Función para formatear la fecha a YYYY-MM-DD
    const formatDate = (date: Date): string => {
        const year = date.getFullYear();
        const month = (date.getMonth() + 1).toString().padStart(2, '0');
        const day = date.getDate().toString().padStart(2, '0');
        return `${year}-${month}-${day}`;
    };

    const handleDateChange = (event: any, date?: Date | undefined) => {
        setShowDatePicker(false);
        if (date) {
            setSelectedDate(date);
            const formattedDate = formatDate(date);
            onChange('fechaNac', formattedDate);
        }
    };


    const handleRegister = async () => {
        if (!tipoId || !numId || !nomCliente || !apeCliente || !fechaNac || !telefono || !correo || !passCliente) {
            ToastAndroid.show('Todos los campos son obligatorios!', ToastAndroid.SHORT);
            return;
        }
        const today = new Date();
        const minAgeDate = new Date();
        minAgeDate.setFullYear(today.getFullYear() - 16);
        if (selectedDate > minAgeDate) {
            ToastAndroid.show('Debes tener al menos 16 años para registrarte', ToastAndroid.SHORT);
            return;
        }
        try {
            await register();
            Alert.alert('Registro Exitoso', 'Te has registrado correctamente\nAhora Inicia Sesion!');
            navigation.navigate('LoginScreen');
        } catch (error) {
            Alert.alert('Error', 'Hubo un error al registrarte. Por favor, inténtalo de nuevo.');
            console.error('Error en el registro:', error);
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
                <Text style={styles.logoText}>BIENVENID@</Text>
            </View>
            <View style={styles.form}>
                <Text style={styles.formText}>REGISTRATE</Text>
                <ScrollView>
                    <View style={styles.inputContainer}>
                        <Image
                            source={require('../../../assets/ID.png')}
                            style={styles.inputImage}
                        />
                        <View style={styles.pickerContainer}>
                            <Picker
                                style={styles.picker}
                                selectedValue={tipoId}
                                onValueChange={(itemValue, itemIndex) => onChange('tipoId', itemValue)}>
                                <Picker.Item label="Tipo de Identificacion" value="" />
                                <Picker.Item label="T.I." value="TI" />
                                <Picker.Item label="C.C." value="CC" />
                                <Picker.Item label="C.E." value="CE" />
                            </Picker>
                        </View>
                    </View>
                    <CustomTextInput
                        image={require('../../../assets/ID.png')}
                        placeholder='No. Identificacion'
                        keyboardType='numeric'
                        property='numId'
                        onChangeText={onChange}
                        value={numId}
                    />
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
                    <TouchableOpacity onPress={() => setShowDatePicker(true)}>
                        <View style={styles.inputContainer}>
                            <Image
                                source={require('../../../assets/date.png')}
                                style={styles.inputImage}
                            />
                            <Text style={styles.formTextInput}>{selectedDate.toDateString()}</Text>
                        </View>
                    </TouchableOpacity>
                    {showDatePicker && (
                        <DateTimePicker
                            value={selectedDate}
                            mode="date"
                            display="default"
                            onChange={handleDateChange}
                        />
                    )}
                    <CustomTextInput
                        image={require('../../../assets/tel.png')}
                        placeholder='Telefono'
                        keyboardType='numeric'
                        property='telefono'
                        onChangeText={onChange}
                        value={telefono}
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
                        image={require('../../../assets/pass.png')}
                        placeholder='Contraseña'
                        keyboardType='default'
                        secureTextEntry={true}
                        property='passCliente'
                        onChangeText={onChange}
                        value={passCliente}
                    />

                    <View style={{ marginTop: 30 }}>
                        <RoundedButton text='Registrarse' onPress={handleRegister} />
                    </View>
                    <View style={styles.link}>
                        <Text>¿Ya tienes cuenta?</Text>
                        <TouchableOpacity><Text style={styles.linkText} onPress={() => navigation.navigate("LoginScreen")}>Inicia Sesion</Text></TouchableOpacity>
                    </View>
                </ScrollView>
            </View>
        </View>
    );
}