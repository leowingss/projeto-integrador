const express = require('express');
const router = express.Router();
const HomeController = require("../controller/HomeController")

/* GET home page. */
router.get("/", HomeController.home);

router.get("/index", (req, res, next) => {
    res.render("index", { title: "Home" });
});

router.get("/login", (req, res, next) => {
    res.render("login", { title: "login" });
});

router.get("/cadastro", (req, res, next) => {
    res.render("cadastro", { title: "cadastro" });
});

router.get("/indoor", (req, res, next) => {
    res.render("indoor", { title: "Sports Indoor" });
});


router.get("/outdoor", (req, res, next) => {
    res.render("outdoor", { title: "Sports Outdoor" });
});

router.get("/compra", (req, res, next) => {
    res.render("compraRealizada", { title: "Compra Efetuada com Sucesso" });
});




module.exports = router;