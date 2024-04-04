const Cliente = require('../models/cliente');

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
        const Tipo_Documento = req.body.Tipo_Documento;
        const passCliente = req.body.passCliente;
        User.findByTipo_Documento(Tipo_Documento, async (err, myUser) => {
            if (err) {
                return res.status(501).json({
                    success: false,
                    message: 'Error al consultar el usuario',
                    error: err
                });
            }
            if (!myUser) { //Cliente sin autorización para realizar la
                req
                return res.status(401).json({
                    success: false,
                    message: 'El Numero de Documento no existe en la base de datos'
                });
            }
            const ispassClienteValid = await bcrypt.compare(passCliente,
                myUser.passCliente);
            if (ispassClienteValid) {
                const token = jwt.sign({
                    id: myUser.id, Tipo_Documento: myUser.Tipo_Documento
                }, keys.secretOrKey, {});
                const data = {
                    id: myUser.id,
                    Tipo_Documento: myUser.Tipo_Documento,
                    name: myUser.name,
                    lastname: myUser.lastname,
                    image: myUser.image,
                    phone: myUser.phone,
                    session_token: `JWT ${token}`
                }
                return res.status(201).json({
                    success: true,
                    message: 'Usuario autenticado ',
                    data: data
                });
            }
            else {
                return res.status(401).json({
                    success: false,
                    message: 'Contraseña incorrecta'
                });
            }
        });
    },
}

