const perfil = require('../models/perfil');

module.exports = {
    visualizar(req, res) {
        const { numId, tipoId, nomCliente, fechaNac, telefono, correo } = req.body;
        const perfilData = {
            numId: numId,
            tipoId: tipoId,
            nomCliente: nomCliente,
            fechaNac: fechaNac,
            telefono: telefono,
            correo: correo
        };

        perfil.show(perfilData, (err, data) => {
            if (err) {
                return res.status(501).json({
                    success: false,
                    message: 'Error al mostrar la información del usuario',
                    error: err
                });
            }
            return res.status(200).json(data);
        });
    }
};
