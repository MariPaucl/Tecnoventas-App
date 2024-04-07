const perfilController = require('../controllers/perfilcontrollers');
module.exports = (app) => {
    app.get('/api/perfil/show/:numId', perfilController.visualizar);
};
