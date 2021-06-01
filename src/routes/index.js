const express = require('express');
const router = express.Router();
const controlador = require("../controller/produtosController")

/* GET home page. */
router.get("/", controlador.home);

router.get("/index", (req, res, next) => {
    res.render("index", { title: "Home" });
});

router.get("/destaques", controlador.destaque);

router.get("/login", (req, res, next) => {
    res.render("login", { title: "login" });
});

router.get("/cadastro", (req, res, next) => {
    res.render("cadastro", { title: "cadastro" });
});

router.get("/indoor", (req, res, next) => {
    res.render("indoor", { title: "Sports Indoor" });
});


router.get("/femininoIndoor", function(req, res, next) {
    res.render("femininoIndoor", { title: "feminino Indoor" });
});

router.get("/masculinoIndoor", function(req, res, next) {
    res.render("masculinoIndoor", { title: "Masculino Indoor" });
});

router.get("/products", (req, res, next) => {
    // const { id } = req.params;
    res.render("products", { title: "Halter" });
});

router.get("/outdoor", (req, res, next) => {
    res.render("outdoor", { title: "Sports Outdoor" });
});




module.exports = router;