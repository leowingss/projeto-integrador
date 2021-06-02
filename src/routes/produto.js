const express = require('express');
const router = express.Router();
const ProdutoController = require('../controller/ProdutoController')


router.get("/equipamentos", ProdutoController.equipamentos);

router.get("/femininoIndoor", ProdutoController.feminino);

router.get("/masculinoIndoor", ProdutoController.masculino);

router.get("/acessoriosIndoor", function(req, res, next) {
    res.render("acessoriosIndoor", { title: "Acessorios Indoor" });
});


module.exports = router