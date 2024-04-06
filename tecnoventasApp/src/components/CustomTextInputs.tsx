import React from 'react'
import { View, Image, TextInput, StyleSheet, KeyboardType } from 'react-native';

interface Props {
    image: any;
    placeholder: string;
    value: string;
    keyboardType: KeyboardType;
    secureTextEntry?: boolean;
    property: string;
    onChangeText: (property: string, value: any) => void,
    placeholderTextColor?: string;
}

export const CustomTextInput = ({
    image,
    placeholder,
    value,
    keyboardType,
    secureTextEntry = false,
    property,
    onChangeText, placeholderTextColor = '#CCCCCC',
}: Props) => {
    return (
        <View style={styles.formInput}>
            <Image style={styles.formIcon}
                source={image}
            />
            <TextInput style={styles.formTextInput}
                placeholder={placeholder}
                keyboardType={keyboardType}
                value={value}
                onChangeText={text => onChangeText(property, text)}
                secureTextEntry={secureTextEntry}
                placeholderTextColor={placeholderTextColor}
            />
        </View>
    )
}

const styles = StyleSheet.create({
    formIcon: {
        width: 25,
        height: 25,
        marginTop: 5,
    },
    formInput: {
        flexDirection: 'row',
        marginTop: 30,
    },
    formTextInput: {
        color: 'white',
        flex: 1,
        borderBottomWidth: 2,
        borderBottomColor: '#5b1753',
        marginLeft: 15,
    }
})