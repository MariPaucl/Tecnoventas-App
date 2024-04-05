const Cliente = require('../models/cliente');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const keys = require('../config/keys');
module.exports = {

    register(req, res) {
        const cliente = req.body;
        Cliente.create(cliente, (err, data) => {
            if (err) {
                return res.status(501).json({
                    succes: false,
                    message: 'Error al registrar el cliente',
                    error: err
                });
            }
            return res.status(201).json({
                succes: true,
                message: 'Cliente Registrado',
                data: data
            });
        });
    },


    login(req, res) {
        const numId = req.body.numId;
        const tipoId = req.body.tipoId;
        const passCliente = req.body.passCliente;

        // Verificar si el tipoId es un valor válido (CC, CE, TI)
        if (!['CC', 'CE', 'TI'].includes(tipoId)) {
            return res.status(401).json({
                success: false,
                message: 'Tipo de documento no válido'
            });
        }

        Cliente.findBytipoId(numId, async (err, myUser) => {
            if (err) {
                return res.status(501).json({
                    success: false,
                    message: 'Error al consultar el usuario',
                    error: err
                });
            }
            if (!myUser) {
                return res.status(401).json({
                    success: false,
                    message: 'El Numero de Documento no existe en la base de datos'
                });
            }
            // Verificar si el tipoId coincide con el tipo de documento del usuario
            if (myUser.tipoId !== tipoId) {
                return res.status(401).json({
                    success: false,
                    message: 'Tipo de documento no coincide'
                });
            }

            const ispassClienteValid = await bcrypt.compare(passCliente, myUser.passCliente);
            if (ispassClienteValid) {
                const token = jwt.sign({
                    id: myUser.id, numId: myUser.numId
                }, keys.secretOrKey, {});
                const data = {
                    id: myUser.id,
                    numId: myUser.numId,
                    tipoId: myUser.tipoId,
                    nomCliente: myUser.nomCliente,
                    apeCliente: myUser.apeCliente,
                    fechaNac: myUser.fechaNac,
                    telefono: myUser.telefono,
                    correo: myUser.correo,
                    passCliente: myUser.passCliente,
                    session_token: `JWT ${token}`
                };

                // Realizar la redirección después de una autenticación exitosa
                return res.status(201).json({
                    success: true,
                    message: 'Usuario autenticado',
                    data: data
                });
            } else {
                return res.status(401).json({
                    success: false,
                    message: 'Contraseña incorrecta'
                });
            }
        });
    }
}
