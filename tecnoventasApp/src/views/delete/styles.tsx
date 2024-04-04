import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
      backgroundColor: 'rgba(255, 255, 255, 0.7)',
      padding: 20,
      borderRadius: 10,
      marginBottom: 20,
    },

    background: {
      flex: 1,
      resizeMode: "cover",
      justifyContent: "center",
    },
    portada: {
      width: '60%',
      height: 280,
      overflow: 'hidden',
      borderBottomLeftRadius: 50,
      borderBottomRightRadius: 50,
      position: 'absolute',
      top: 0,
      zIndex: 0,
    },
    imagenPortada: {
      width: '100%',
      height: '100%',
      resizeMode: 'cover',
    },
    
    header: {
      fontSize: 20,
      fontWeight: "bold",
      marginBottom: 20,
    },
    input: {
      width: 300,
      height: 40,
      borderWidth: 1,
      borderColor: "black",
      paddingHorizontal: 10,
      marginBottom: 10,
    },
    secondaryText: {
      fontSize: 16,
      marginBottom: 10,
    },
    button: {
      backgroundColor: "#4B0082",
      padding: 10,
      borderRadius: 5,
    },
    text: {
      color: "white",
      textAlign: "center",
      fontWeight: "bold",
    },
  });
  
export default styles;
