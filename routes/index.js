var express = require('express');
var router = express.Router();
const controlador = require("../controller/produtosController")

/* GET home page. */
router.get('/', controlador.titulo);

module.exports = router;
