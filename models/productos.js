const mysql = require('../config/config');

const Producto = {};

Producto.visualizar = async (producto, result) => {
    try {
        const sql = `
        SELECT 
            imagen,
            nomProd,
            precio,
            estProd
        FROM
            productos
        WHERE
            codigoCat = ?
        `;

        mysql.query(
            sql,
            [producto.codigoCat],
            (err, res) => {
                if (err) {
                    console.log('Error: ', err);
                    result(err, null);
                } else {
                    console.log(res);
                    result(null, res);
                }
            }
        );
    } catch (error) {
        console.error('Error al mostrar los productos:', error);
        result(error, null);
    }
};

module.exports = Producto;