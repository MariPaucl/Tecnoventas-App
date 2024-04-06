import { StyleSheet } from "react-native";

const UpdateStyles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: 'black',
    },
    imageBackground: {
        width: '100%',
        height: '100%',
        opacity: 0.5,
        bottom: '20%',
    },
    form:{
        width: '100%',
        height: '67%',
        backgroundColor: 'rgba(255, 254, 254, 0.4)',
        position: 'absolute',
        bottom: 0,
        borderTopLeftRadius: 40,
        borderTopRightRadius: 40,
        padding: 30,
    },
    formText:{
        fontWeight: 'bold',
        fontSize: 20,
        textAlign: 'left',
        paddingBottom: 10,
        borderBottomWidth: 2,
        borderBottomColor: '#5B1753',
    },
    formIcon: {
        width: 25,
        height: 25,
        marginTop: 5,
    },
    formInput: {
        flexDirection: 'row',
        marginTop: 25,
    },
    formTextInput: {
        flex: 1,
        borderBottomWidth: 1,
        borderBottomColor: '#AAAAAA',
        marginLeft: 15,
    },
    logoContainer: {
        position: 'absolute',
        alignSelf: 'center',
        top: '5%',
        alignItems: 'center',
    },
    logoImage: {
        width: 150,
        height: 150,
    },
    logoador: {
        width: 18,
        height: 18,
        marginTop: 4,
    },
    logoText: {
        color: 'white',
        textAlign: 'center',
        fontSize: 20,
        marginTop: 10,
        fontWeight: 'bold',
    },
    link: {
        flexDirection: 'row',
        justifyContent: 'center',
        marginTop: 30,
    },
    linkText: {
        fontStyle: 'italic',
        color: '#5B1753',
        borderBottomWidth: 1,
        borderBottomColor: '#5B1753',
        fontWeight: 'bold',
        marginLeft: 10,
    },
})

export default UpdateStyles;