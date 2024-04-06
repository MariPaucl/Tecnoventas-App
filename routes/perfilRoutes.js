const perfilController = require('../controllers/perfilcontrollers');
module.exports = (app) => {
    app.post('/api/perfil/show', perfilController.visualizar);
};
