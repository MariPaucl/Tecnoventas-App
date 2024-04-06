const Producto = require('../models/productos')

module.exports = {

    read(req, res) {
        const producto = req.body;
        Producto.visualizar(producto, (err, data) => {
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