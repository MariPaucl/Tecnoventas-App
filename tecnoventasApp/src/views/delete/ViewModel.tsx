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

    const [error, setError] = useState('');

    const onChange = (property, value) => {
        // Podrías agregar validación aquí antes de actualizar el estado
        setValues({ ...values, [property]: value });
    };

    const deleteAccount = async () => {
        try {
            // Podrías validar los datos antes de enviar la solicitud DELETE

            const response = await fetch('http://1 169.254.232.146:3000/api/clientes/delete', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ correo: values.correo }),
            });

            const data = await response.json();
            if (!response.ok) {
                throw new Error(data.message || 'Error al eliminar la cuenta del cliente');
            }

            return 'deleted'; // Devuelve 'deleted' si la eliminación fue exitosa
        } catch (error) {
            // Podrías distinguir entre diferentes tipos de errores y manejarlos de manera diferente
            setError(error.message);
            return 'error'; // Devuelve 'error' si ocurrió un error al eliminar la cuenta
        }
    };

    return {
        values,
        onChange,
        deleteAccount,
        error,
    };
};

export default useViewModel;
