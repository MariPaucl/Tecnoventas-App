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
    }
};