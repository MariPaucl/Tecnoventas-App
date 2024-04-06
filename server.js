const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');
const clienteRoutes = require('./routes/clienteRoutes');
const productoRoutes = require('./routes/productosRoutes');

const port = process.env.PORT || 3000;
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.disable('x-powered-by');

app.set('port', port);

clienteRoutes(app);
productoRoutes(app);

//ipconfig para saber ip
server.listen(port, '192.168.0.16' || 'localhost', function() {
    console.log('Aplicacion Tecnoventas ' + process.pid + ' inicio en el puerto ' + port);
});

app.get('/', (req, res) => {
    res.send('Ruta raiz del Backend');
});

app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});