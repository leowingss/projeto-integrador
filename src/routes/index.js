const express = require('express');
const router = express.Router();
const HomeController = require("../controller/HomeController")
const validateRegister = require('../../validation/validation')

/* GET home page. */
router.get("/", HomeController.home);

router.get("/index", (req, res, next) => {
    res.render("index", { title: "Home" });
});

router.get("/login", (req, res, next) => {
    res.render("login", { title: "login" });
});

<<<<<<< HEAD
router.get("/cadastro", (req, res, next) => {
    res.render("cadastro", { title: "cadastro" });
=======
router.get("/compra", (req, res, next) => {
    res.render("compraRealizada", { title: "Compra Efetuada com Sucesso" });
>>>>>>> feat/cadastro
});




module.exports = router;