import React, { useState } from 'react';

export const useViewModel = () => {
    const [values, setValues] = useState({
        tipoId: '',
        numId: '',
        nomCliente: '',
        apeCliente: '',
        fechaNac: '',
        telefono: '',
        correo: '',
        passCliente: '',
    });

    const onChange = (property: string, value: any) => {
        setValues({ ...values, [property]: value });
    };

    const register = async () => {
        try {
            const response = await fetch('http://192.168.100.115:3000/api/clientes/create', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(values),
            });
            if (!response.ok) {
                throw new Error('Error al registrar el cliente');
            }
        } catch (error) {
            throw error;
        }
    };

    return {
        ...values,
        onChange,
        register,
    };
};

export default useViewModel;