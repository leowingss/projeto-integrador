const express = require('express');
const router = express.Router();
const ProdutoController = require('../controller/ProdutoController')


router.get("/equipamentos", ProdutoController.equipamentos);

router.get("/femininoIndoor", function(req, res, next) {
    res.render("femininoIndoor", { title: "feminino Indoor" });
});

router.get("/masculinoIndoor", function(req, res, next) {
    res.render("masculinoIndoor", { title: "Masculino Indoor" });
});

router.get("/acessoriosIndoor", function(req, res, next) {
    res.render("acessoriosIndoor", { title: "Acessorios Indoor" });
});


module.exports = router