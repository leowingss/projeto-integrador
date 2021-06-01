const express = require('express');
const router = express.Router();


router.get("/equipamentos", (req, res, next) => {
    res.render("equipamentos", { title: "Equipamentos" });
});

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