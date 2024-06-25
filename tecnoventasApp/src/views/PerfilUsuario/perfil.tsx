import React, { useEffect, useState } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { View, ImageBackground, Image, StyleSheet, Text, Alert, TouchableOpacity } from 'react-native';
import { withNavigation } from '@react-navigation/compat';

import DocumentoIcon from '../../../assets/documento.png';
import DocumentoIcon2 from '../../../assets/documentont.png';
import TelefonoIcon from '../../../assets/telefono.png';
import FechaIcon from '../../../assets/fecha.png';
import CorreoIcon from '../../../assets/correo.png';

const PerfilScreen = ({ navigation }) => {
  const [imagenPerfil, setImagenPerfil] = useState(require('../../../assets/usuario.png'));
  const [tipoId, setTipoId] = useState('');
  const [numId, setNumId] = useState('');
  const [telefono, setTelefono] = useState('');
  const [fechaNac, setFechaNac] = useState('');
  const [nombreUsuario, setNombreUsuario] = useState('');
  const [apeCliente, setApeCliente] = useState('');
  const [correo, setCorreo] = useState('');

  useEffect(() => {
    obtenerInformacionUsuario();
  }, []);

  const obtenerInformacionUsuario = async () => {
    try {
      const userInfoString = await AsyncStorage.getItem('userInfo');

      if (userInfoString !== null) {
        const userInfo = JSON.parse(userInfoString);
        const numIdStored = userInfo.numId;

        const response = await fetch(`http://169.254.232.146:3000/api/perfil/show/${numIdStored}`);
        if (response.ok) {
          const userDataArray = await response.json();
          const userData = userDataArray[0];

          setTipoId(userData.tipoId);
          setNumId(userData.numId);
          setTelefono(userData.telefono);

          if (userData.fechaNac) {
            const fechaFormateada = new Date(userData.fechaNac).toISOString().split('T')[0];
            setFechaNac(fechaFormateada);
          } else {
            console.error('La propiedad fecha no está definida en el objeto userData');
          }

          setNombreUsuario(userData.nomCliente);
          setApeCliente(userData.apeCliente);
          setCorreo(userData.correo);
        } else {
          console.error('Error al obtener los datos del usuario desde la API:', response.status);
        }
      }
    } catch (error) {
      console.error('Error al obtener información del usuario:', error);
    }
  };

  const onPressEditarPerfil = () => {
    navigation.navigate("ActualizarScreen", {
        nombreUsuario,
        apeCliente,
        fechaNac,
        telefono,
        correo,
        numId
    });
  };
  const onPressEliminarCuenta = () => {
    navigation.navigate("DeleteScreen");
  };
  const onPressCerrarSesion = () => {
    Alert.alert(
      'Cerrar Sesión',
      '¿Estás seguro de que deseas cerrar sesión?',
      [
        {
          text: 'Cancelar',
          onPress: () => console.log('Cancelado'),
          style: 'cancel',
        },
        {
          text: 'Aceptar',
          onPress: async () => {
          
            navigation.navigate('HomeScreen');
          },
        },
      ],
      { cancelable: false }
    );
  };

  return (
    <ImageBackground source={require('../../../assets/fondo3.jpeg')} style={styles.backgroundImage}>
      <View style={styles.container}>
        <View style={styles.portada}>
          <Image style={styles.imagenPortada} source={require('../../../assets/tecno.png')} />
        </View>
        <View style={styles.header}>
          <Image style={styles.imagenPerfil} source={imagenPerfil} />
          <Text style={styles.nombreUsuario}>{nombreUsuario} {apeCliente} </Text>
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
        {/* Botones */}
        <TouchableOpacity style={[styles.boton, styles.botonEditarPerfil]} onPress={onPressEditarPerfil}>
          <Text style={styles.textoBoton}>Editar Datos</Text>
        </TouchableOpacity>
        <TouchableOpacity style={[styles.boton, styles.botonEliminarCuenta]} onPress={onPressEliminarCuenta}>
          <Text style={styles.text}>Eliminar Cuenta</Text>
        </TouchableOpacity>
        <TouchableOpacity style={[styles.boton, styles.botonCerrarSesion]} onPress={onPressCerrarSesion}>
          <Text style={styles.text}>Cerrar Sesión</Text>
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
  apeCliente: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 4,
    color: '#fff',
    paddingHorizontal: 10,
    borderRadius: 10,
  },
  nombreUsuario: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 4,
    color: '#fff',
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
    backgroundColor: '#E0E0E0',
  },
  celdaTitulo: {
    color: '#000',
    fontSize: 16,
    fontWeight: 'bold',
    marginRight: 5,
  },
  celdaTituloTipoId: {
    color: '#000',
    fontSize: 16,
    fontWeight: 'bold',
    color: '#757575',
    marginRight: 5,
  },
  celda: {
    color: '#000',
    fontSize: 16,
  },
  celdaTipoId: {
    color: '#000',
    fontSize: 16,
    color: '#757575',
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
    width: 130,
    height: 40
  },
  botonEliminarCuenta: {
    backgroundColor: '#7a2fbc',
    bottom: 10,
    right: 10,
    width: 130,
    height: 40
  },
  botonCerrarSesion: {
    backgroundColor: '#7a2fbc',
    bottom: 10,  
  },
  textoBoton: {
    color: '#fff',
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
  datosContainer: {
    marginTop: 20,
    alignItems: 'center',
  },
  datosText: {
    fontSize: 16,
    marginBottom: 5,
  },
});

export default PerfilScreen;
