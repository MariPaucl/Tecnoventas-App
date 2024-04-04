import * as React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { HomeScreen } from './src/views/Home/home';
import { RegistroScreen } from './src/views/Registro/registro';
import { LoginScreen } from './src/views/login/login';
import { ProductosScreen } from './src/views/Productos/productos';
import PerfilScreen from "./src/views/PerfilUsuario/perfil";
import { ActualizarScreen } from './src/views/Actualizar/actualizar';
import DeleteScreen from "./src/views/delete/Deleteacount";

export type RootStackParamList = {
  HomeScreen: undefined;
  RegistroScreen: undefined;
  LoginScreen: undefined;
  ProductosScreen: undefined;
  PerfilScreen: undefined;
  ActualizarScreen: undefined;
  DeleteScreen: undefined;
};

const Stack = createNativeStackNavigator<RootStackParamList>();

const App = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator screenOptions={{
        headerShown: false
      }}>
        <Stack.Screen
          name="HomeScreen"
          component={HomeScreen}
        />
        <Stack.Screen
          name="RegistroScreen"
          component={RegistroScreen}
          options={{
            headerShown: true,
            title: "Registro",
          }} />
        <Stack.Screen
          name="LoginScreen"
          component={LoginScreen}
          options={{
            headerShown: true,
            title: "Iniciar Sesión",
          }} />
        <Stack.Screen
          name="ProductosScreen"
          component={ProductosScreen}
          options={{
          headerShown: false,
        }}/>
        <Stack.Screen
          name="PerfilScreen"
          component={PerfilScreen}
          options={{
            headerShown: true,
            title: "Perfil",
          }}/>
        <Stack.Screen
          name="ActualizarScreen"
          component={ActualizarScreen}
          options={{
            headerShown: true,
            title: "Actualizar",
          }}/>
        <Stack.Screen
          name="DeleteScreen"
          component={DeleteScreen}
          options={{
            headerShown: true,
            title: "Eliminar Cuenta",
          }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
};
export default App;
