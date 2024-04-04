const clientesControllers = require('../controllers/clientesControllers')

module.exports = (app) => {
    app.post('/api/clientes/create', clientesControllers.register);
    app.post('/api/clientes/login', clientesControllers.login);
};