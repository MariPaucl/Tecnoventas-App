const mysql = require('../config/config');
const bcrypt = require('bcrypt');

const Cliente = {};

Cliente.create = async (cliente, result) => {
    try {
        const hashPass = await bcrypt.hash(cliente.passCliente, 10); 
        const sql = `
            INSERT INTO clientes(
                numId,
                tipoId,
                nomCliente,
                apeCliente,
                fechaNac,
                telefono,
                correo,
                passCliente
            )
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        `;

        mysql.query(
            sql,
            [cliente.numId, cliente.tipoId, cliente.nomCliente, cliente.apeCliente, cliente.fechaNac, cliente.telefono, cliente.correo, hashPass],
            (err, res) => {
                if (err) {
                    console.log('Error: ', err);
                    result(err, null);
                } else {
                    console.log('Id del nuevo Cliente ', res.insertId);
                    result(null, res.insertId);
                }
            }
        );
    } catch (error) {
        console.error('Error al registrar el cliente:', error);
        result(error, null);
    }
};

module.exports = Cliente;