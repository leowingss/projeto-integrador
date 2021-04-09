var express = require('express');
var router = express.Router();
const controlador = require("../controller/produtosController")

/* GET home page. */
router.get('/', controlador.titulo);

module.exports = router;

router.get('/promocoes', function(req, res, next) {
    res.render('promocoes', { title: 'Promoções' });
  });
  