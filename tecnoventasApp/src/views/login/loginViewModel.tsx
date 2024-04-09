import React, { useState } from 'react';

export const useViewModel = () => {
    const [values, setValues] = useState({
        tipoId: '',
        numId: '',
        passCliente: '',
        telefono: '',
        fechaNac: '',
        nombreUsuario: '',
        correo: '',
    });

    const onChange = (property: string, value: any) => {
        setValues({ ...values, [property]: value });
    };

    const login = async () => {
        try {
            const response = await fetch('http://192.168.100.115:3000/api/clientes/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(values),
            });
            if (!response.ok) {
                throw new Error('Error al validar el Cliente');
            }
            return true; // Indicar que el inicio de sesión fue exitoso
        } catch (error) {
            console.error(error);
            return false; // Indicar que el inicio de sesión falló
        }
    };


    return {
        ...values,
        onChange,
        login,
    };
};

export default useViewModel;