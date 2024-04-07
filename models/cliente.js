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

Cliente.update = async (cliente, result) => {
    try {
        const sql = `
            UPDATE clientes 
            SET 
                nomCliente = ?, 
                apeCliente = ?, 
                fechaNac = ?, 
                telefono = ?, 
                correo = ? 
            WHERE 
            numId = ?
        `;

        mysql.query(
            sql,
            [cliente.nomCliente, cliente.apeCliente, cliente.fechaNac, cliente.telefono, cliente.correo, cliente.numId],
            (err, res) => {
                if (err) {
                    console.log('Error: ', err);
                    result(err, null);
                } else {
                    console.log('Cliente actualizado');
                    result(null, res);
                }
            }
        );
    } catch (error) {
        console.error('Error al actualizar el cliente:', error);
        result(error, null);
    }
};

Cliente.deleteAccount = (correo, callback) => {
    const sql = 'DELETE FROM `clientes` WHERE `correo` = ? ';
    mysql.query(sql, [correo], (err, result) => {
        if (err) {
            console.error('Error al eliminar la cuenta del cliente:', err);
            return callback(err, null);
        }
        if (result.affectedRows === 0) {
            console.log('La cuenta del cliente no existe');
            return callback(null, { message: 'La cuenta del cliente no existe' });
        }
        console.log('Cuenta de cliente eliminada exitosamente');
        return callback(null, { message: 'Cuenta de cliente eliminada exitosamente' });
    });
};

module.exports = Cliente;