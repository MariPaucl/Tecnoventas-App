import { StyleSheet } from "react-native";
const loginStyles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: 'black',
    },
    imageBackground: {
        width: '100%',
        height: '100%',
        opacity: 0.7,
        bottom: '5%',
    },
    form: {
        width: '100%',
        height: '40%',
        backgroundColor: 'rgba(190, 190, 190, 0.5)',
        position: 'absolute',
        bottom: 0,
        borderTopLeftRadius: 40,
        borderTopRightRadius: 40,
        padding: 30,
    },
    formText: {

        color: '#5b1753',
        fontWeight: 'bold',
        fontSize: 20,
        textAlign: 'left',
        paddingBottom: 10,
        borderBottomWidth: 2,
        borderBottomColor: '#5B1753',
    },
    formRegister: {
        flexDirection: 'row',
        justifyContent: 'center',
        marginTop: 30,
    },
    formRegisterText: {
        fontStyle: 'italic',
        color: 'purple',
        borderBottomWidth: 1,
        borderBottomColor: 'purple',
        fontWeight: 'bold',
        marginLeft: 10,
    },
    logoContainer: {
        position: 'absolute',
        alignSelf: 'center',
        top: '15%',
    },

    logoImage: {
        width: 250,
        height: 250,
    },
    logoText: {
        color: 'white',
        textAlign: 'center',
        fontSize: 20,
        marginTop: 10,
        fontWeight: 'bold',
    },
});
export default loginStyles;