import { useState, useEffect } from 'react';
import { useRoute } from '@react-navigation/native';

export const useViewModel = () => {
    const [nomCliente, setNomCliente] = useState('');
    const [apeCliente, setApeCliente] = useState('');
    const [fechaNac, setFechaNac] = useState('');
    const [telefono, setTelefono] = useState('');
    const [correo, setCorreo] = useState('');
    const [numId, setNumId] = useState('');

    const route = useRoute();

    useEffect(() => {
        if (route.params) {
            const { nombreUsuario, apeCliente, fechaNac, telefono, correo, numId } = route.params;
            setNomCliente(nombreUsuario);
            setApeCliente(apeCliente);
            setFechaNac(fechaNac);
            setTelefono(telefono);
            setCorreo(correo);
            setNumId(numId);
        }
    }, [route.params]);

    const onChange = (property, value) => {
        switch (property) {
            case 'nomCliente':
                setNomCliente(value);
                break;
            case 'apeCliente':
                setApeCliente(value);
                break;
            case 'fechaNac':
                setFechaNac(value);
                break;
            case 'telefono':
                setTelefono(value);
                break;
            case 'correo':
                setCorreo(value);
                break;
            case 'numId':
                setNumId(value);
                break;
            default:
                break;
        }
    };

    const update = async () => {
        try {
            const response = await fetch('http:// 169.254.232.146:3000/api/clientes/update', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    nomCliente,
                    apeCliente,
                    fechaNac,
                    telefono,
                    correo,
                    numId,
                }),
            });
            if (!response.ok) {
                throw new Error('Error al actualizar datos del cliente');
            }
        } catch (error) {
            throw error;
        }
    };

    return {
        nomCliente,
        apeCliente,
        fechaNac,
        telefono,
        correo,
        onChange,
        update,
    };
};

export default useViewModel;