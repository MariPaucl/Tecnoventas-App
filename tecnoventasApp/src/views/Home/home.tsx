import React from 'react';
import { useNavigation } from '@react-navigation/native';
import { Text, TouchableOpacity, StyleSheet, View } from 'react-native';
import { StackNavigationProp } from '@react-navigation/stack';
import { RootStackParamList } from '../../../App';

export const HomeScreen = () => {
    const navigation = useNavigation<StackNavigationProp<RootStackParamList>>();

    return (
        <View style={styles.container}>
            <TouchableOpacity
                style={styles.button}
                onPress={() => navigation.navigate('RegistroScreen')}
            >
                <Text style={styles.text}>Ventas</Text>
            </TouchableOpacity>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    button: {
        backgroundColor: '#DDDDDD',
        padding: 10,
        borderRadius: 5,
    },
    text: {
        textAlign: 'center',
        color: 'black',
    }
});