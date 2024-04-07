import React, { useState } from 'react';

const e = '22'//Id al cual se la cambian los valores

export const useViewModel = () => {
    const [values, setValues] = useState({
        nomCliente: '',
        apeCliente: '',
        fechaNac: '',
        telefono: '',
        correo: '',
        numId: e,
    });

    const onChange = (property: string, value: any) => {
        setValues({ ...values, [property]: value });
    };

    const update = async () => {
        try {
            const response = await fetch('http://169.254.232.146:3000/api/clientes/update', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(values),
            });
            if (!response.ok) {
                throw new Error('Error al actualizar datos del cliente');
            }
        } catch (error) {
            throw error;
        }
    };

    return {
        ...values,
        onChange,
        update,
    };
};

export default useViewModel;