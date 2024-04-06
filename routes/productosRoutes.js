const productosControllers = require('../controllers/productosControllers')

module.exports = (app) => {
    app.post('/api/productos/visualizar', productosControllers.read);
};