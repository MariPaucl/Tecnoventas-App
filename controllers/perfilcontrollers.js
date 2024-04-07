const perfil = require('../models/perfil');

module.exports = {
    visualizar(req, res) {
        const numId = req.params.numId; // Acceder al parámetro numId de req.params
        const perfilData = {
            numId: numId // Utilizar el parámetro numId
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
}