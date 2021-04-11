const express = require('express');
const router = express.Router();
const controlador = require("../controller/produtosController")

/* GET home page. */
router.get("/", controlador.home);

router.get("/promocoes", function (req, res, next) {
  res.render("promocoes", { title: "Promoções" });
});

router.get("/login", function (req, res, next) {
  res.render("login", { title: "login" });
});

router.get("/cadastro", function (req, res, next) {
  res.render("cadastro", { title: "cadastro" });
});

module.exports = router;
