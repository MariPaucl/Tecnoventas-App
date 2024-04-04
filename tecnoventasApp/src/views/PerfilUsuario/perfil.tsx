import React, { useState } from 'react';
import { View, ImageBackground, Image, StyleSheet, Text, TouchableOpacity } from 'react-native';
import { withNavigation } from '@react-navigation/compat'; // Importa withNavigation

// Importa los iconos
import DocumentoIcon from '../../../assets/documento.png';
import DocumentoIcon2 from '../../../assets/documentont.png';
import TelefonoIcon from '../../../assets/telefono.png';
import FechaIcon from '../../../assets/fecha.png';
import CorreoIcon from '../../../assets/correo.png';

const PerfilScreen = ({ navigation }) => { // Pasa navigation como una propiedad
  const [imagenPerfil, setImagenPerfil] = useState(require('../../../assets/usuario.png'));
  const [tipoId, setTipoId] = useState('CC');
  const [numId, setNumId] = useState('1023456327');
  const [telefono, setTelefono] = useState('3124536788');
  const [fechaNac, setFechaNac] = useState('25 - 12 - 2004');
  const [nombreUsuario, setNombreUsuario] = useState('Sara Moreno');
  const [correo, setCorreo] = useState('sara33@gmail.com');

  const onPressEditarPerfil = () => {
    navigation.navigate("ActualizarScreen");
  };

  const onPressEliminarCuenta = () => {
    navigation.navigate("DeleteScreen"); 
  };

  return (
    <ImageBackground source={require('../../../assets/fondo3.jpeg')} style={styles.backgroundImage}>
      <View style={styles.container}>
        <View style={styles.portada}>
          <Image style={styles.imagenPortada} source={require('../../../assets/tecno.png')} />
        </View>
        <View style={styles.header}>
          <Image style={styles.imagenPerfil} source={imagenPerfil} />
          <Text style={styles.nombreUsuario}>{nombreUsuario}</Text>
        </View>
        <View style={styles.contenedorPerfil}>
          <View style={styles.tabla}>
            <View style={[styles.fila, styles.filaTipoId]}>
              <Image style={styles.icono} source={DocumentoIcon} />
              <View style={styles.textoIcono}>
                <Text style={styles.celdaTituloTipoId}>Tipo ID:</Text>
                <Text style={styles.celdaTipoId}>{tipoId}</Text>
              </View>
            </View>
            <View style={styles.fila}>
              <Image style={styles.icono} source={DocumentoIcon2} />
              <View style={styles.textoIcono}>
                <Text style={styles.celdaTitulo}>Num ID:</Text>
                <Text style={styles.celda}>{numId}</Text>
              </View>
            </View>
            <View style={[styles.fila, styles.filaTipoId]}>
              <Image style={styles.icono} source={TelefonoIcon} />
              <View style={styles.textoIcono}>
                <Text style={styles.celdaTituloTipoId}>Telefono:</Text>
                <Text style={styles.celdaTipoId}>{telefono}</Text>
              </View>
            </View>
            <View style={styles.fila}>
              <Image style={styles.icono} source={FechaIcon} />
              <View style={styles.textoIcono}>
                <Text style={styles.celdaTitulo}>Fecha:</Text>
                <Text style={styles.celda}>{fechaNac}</Text>
              </View>
            </View>
            <View style={[styles.fila, styles.filaTipoId]}>
              <Image style={styles.icono} source={CorreoIcon} />
              <View style={styles.textoIcono}>
                <Text style={styles.celdaTituloTipoId}>Correo:</Text>
                <Text style={styles.celdaTipoId}>{correo}</Text>
              </View>
            </View>
          </View>
        </View>
        <TouchableOpacity style={[styles.boton, styles.botonEditarPerfil]} onPress={onPressEditarPerfil}>
          <Text style={styles.textoBoton}>Editar Datos</Text>
        </TouchableOpacity>
        <TouchableOpacity style={[styles.boton, styles.botonEliminarCuenta]} onPress={onPressEliminarCuenta}>
          <Text style={styles.text}>Eliminar cuenta</Text>
        </TouchableOpacity>
      </View>
    </ImageBackground>
  );
};

const styles = StyleSheet.create({
  backgroundImage: {
    flex: 1,
    resizeMode: 'cover',
    justifyContent: 'center',
  },
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
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
    position: 'absolute',
    top: 100,
    alignItems: 'center',
    zIndex: 1,
  },
  imagenPerfil: {
    width: 100,
    height: 100,
    borderRadius: 50,
    marginTop: 120,
  },
  nombreUsuario: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 10,
    color: '#fff', // Color negro
     // Fondo blanco
    paddingHorizontal: 10, 
    borderRadius: 10, 
  },
  contenedorPerfil: {
    backgroundColor: '#F5F5F5', 
    borderRadius: 20, 
    padding: 20,
    marginBottom: 20,
    width: '80%',
    alignItems: 'center',
    zIndex: 1,
    marginTop: 290, 
    
  },
  tabla: {
    width: '100%',
  },
  fila: {
    flexDirection: 'row',
    justifyContent: 'flex-start',
    alignItems: 'center',
    paddingVertical: 10,
  },
  filaTipoId: {
    backgroundColor: '#E0E0E0', // Gris más claro
  },
  celdaTitulo: {
    color: '#000', // Color negro
    fontSize: 16,
    fontWeight: 'bold',
    marginRight: 5,
  },
  celdaTituloTipoId: {
    color: '#000', // Color negro
    fontSize: 16,
    fontWeight: 'bold',
    color: '#757575', // Color más oscuro
    marginRight: 5,
  },
  celda: {
    color: '#000', // Color negro
    fontSize: 16,
  },
  celdaTipoId: {
    color: '#000', // Color negro
    fontSize: 16,
    color: '#757575', // Color más oscuro
  },
  boton: {
    position: 'absolute',
    borderRadius: 20,
    paddingVertical: 10,
    paddingHorizontal: 20,
    zIndex: 1,
  },
  botonEditarPerfil: {
    backgroundColor: '#7a2fbc', 
    bottom: 10,
    left: 10,
  },
  botonEliminarCuenta: {
    backgroundColor: '#7a2fbc', 
    bottom: 10,
    right: 10,
  },
  textoBoton: {
    color: '#fff', // Blanco
    fontSize: 16,
    textAlign: 'center',
  },
  icono: {
    width: 20,
    height: 20,
    marginRight: 10,
  },
  textoIcono: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  text: {
    textAlign: "center",
    color: "white",
  },
});

export default PerfilScreen;
