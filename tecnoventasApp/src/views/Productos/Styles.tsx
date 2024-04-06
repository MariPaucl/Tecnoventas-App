import { StyleSheet, Dimensions } from "react-native";

const { width } = Dimensions.get('window');

const ProductosStyles = StyleSheet.create({
    container:{
        flex: 1,
        backgroundColor: 'black',
        alignItems: 'center',
        justifyContent: 'center',
    },
    imageBackground: {
        width: '100%',
        height: '100%',
        opacity: 0.5,
        position: 'absolute',
        resizeMode: 'cover',
    },
    header: {
        flex: 1,
        justifyContent: 'center',
        marginTop: 50,
        alignItems: 'center',
    },
    title: {
        fontSize: 30,
        fontWeight: 'bold',
        textAlign: 'center',
        color: 'white',
        marginBottom: 50,
    },
    pickerContainer: {
        borderWidth: 2,
        borderColor: '#790bcd',
        borderRadius: 3,
        marginBottom: 10,
    },
    picker: {
        width: width * 0.8,
        backgroundColor: '#fff',
    },
    productosContainer: {
        width: '100%',
        marginTop: 60,
    },
    card: {
        flexDirection: 'row',
        alignItems: 'center',
        backgroundColor: '#ffffff',
        borderRadius: 10,
        marginBottom: 10,
        padding: 10,
    },
    cardImage: {
        width: 70,
        height: 100,
        borderRadius: 10,
        marginRight: 10,
    },
    cardContent: {
        flex: 0,
    },
    cardTitle: {
        fontSize: 18,
        fontWeight: 'bold',
        marginBottom: 5,
        color: '#333333',
    },
    cardSubtitle: {
        fontSize: 16,
        color: '#666666',
        marginBottom: 5,
    },
    cardDescription: {
        fontSize: 15,
        color: 'green',
    },
    boton1: {
        width: 200,
        height: 40,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#790bcd',
        borderRadius: 10,
        marginTop: 10,
    },
    button: {
        width: '50%',
        height: 40,
        borderRadius: 20,
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: '#790bcd',
        marginBottom: 10,
    },
    buttonText: {
        fontSize: 16,
        fontWeight: 'bold',
        color: '#ffffff',
    },    
    enlace: {
        marginTop: 20,
        textAlign: 'center',
    },
    enlaceText: {
        fontSize: 15,
        color: 'white',
        textAlign: 'center',
    },
    enlaceText2: {
        fontStyle: 'italic',
        fontSize: 15,
        fontWeight: 'bold',
        color: '#9d5fcb',
        textAlign: 'center',
        marginBottom: 15,
    },
});

export default ProductosStyles;