const Producto = require('../models/productos')

module.exports = {
    read(req, res) {
        const { codigoCat } = req.body;
        Producto.visualizar(codigoCat, (err, data) => {
            if (err) {
                return res.status(501).json({
                    succes: false,
                    message: 'Error al mostrar los productos',
                    error: err
                });
            }
            return res.status(200).json(data);
        });
    },
}