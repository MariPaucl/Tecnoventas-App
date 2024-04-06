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

    const deleteAccount = async () => {
        try {
            const response = await fetch('http://192.168.101.78:3000/api/clientes/delete', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ correo: values.correo }),
            });
            if (!response.ok) {
                throw new Error('Error al eliminar la cuenta del cliente');
            }
        } catch (error) {
            throw error;
        }
    };

    return {
        values,
        onChange,
        deleteAccount,
    };
};

export default useViewModel;
