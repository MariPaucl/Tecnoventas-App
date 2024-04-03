import * as React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { HomeScreen } from './src/views/Home/home';
import { RegistroScreen } from './src/views/Registro/registro';
import { LoginScreen } from './src/views/login/login';

export type RootStackParamList = {
  HomeScreen: undefined;
  RegistroScreen: undefined;
  LoginScreen: undefined;
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
            title: "Registro",
          }} />

      </Stack.Navigator>


    </NavigationContainer>
  );
};
export default App;