import React, {useState} from 'react';

export const useViewModel = () => {
    const [values, setValues] = useState({
        nomCliente: '',
        apeCliente: '',
        fechaNac: '',
        telefono: '',
        correo: '',
    });

    const onChange = (property: string, value: any) => {
        setValues({ ...values, [property]: value });
    };

    const update = async () => {
        try {
            const response = await fetch('http://192.168.0.16:3000/api/clientes/update', {
                method: 'PUT',
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