const mysql = require('../config/config');
const bcrypt = require('bcryptjs');

const Cliente = {};

Cliente.create = async (cliente, result) => {
    try {
        const hashedPassword = await bcrypt.hash(cliente.passCliente, 10);
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
            [cliente.numId, cliente.tipoId, cliente.nomCliente, cliente.apeCliente, cliente.fechaNac, cliente.telefono, cliente.correo, hashedPassword],
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

Cliente.findBytipoId = (numId, result) => {
    const sql = `SELECT numId, tipoId, nomCliente, fechaNac, apeCliente, telefono, correo, passCliente FROM clientes WHERE numId = ?`;
    mysql.query(sql, [numId], (err, user) => {
        if (err) {
            console.log('Error al consultar: ', err);
            result(err, null);
        } else {
            console.log('Usuario consultado: ', user[0]);
            result(null, user[0]);
        }
    });
};

module.exports = Cliente;