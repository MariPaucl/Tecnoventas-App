const mysql = require('mysql');
const db = mysql.createConnection({
    host: 'tecnoventas.mysql.database.azure.com',
    user: 'tecnoventas',
    password: 'Formacionsena*',
    database: 'tecnoventas'
});

db.connect(function (err) {
    if (err) throw err;
    console.log('Base de datos conectada');
});

module.exports = db;
