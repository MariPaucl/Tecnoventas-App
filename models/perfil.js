const mysql = require('../config/config');

const perfil = {};

perfil.show = (perfil, result) => {
    const sql = `
    SELECT numId, tipoId, nomCliente, telefono, correo 
    FROM clientes WHERE numid = ?;
  `;
  mysql.query(sql, perfil.numId, (err, res) =>{
    if (err) {
        console.log('Error', err);
        result(err, null);
        return;
    }
    console.log('Resultado de la consulta:', res);
    result(null, res);
  });
};

module.exports = perfil;
