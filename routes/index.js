const express = require('express');
const router = express.Router();
const controlador = require("../controller/produtosController")

/* GET home page. */
router.get("/", controlador.home);

router.get("/index", function (req, res, next) {
  res.render("index", { title: "Home" });
});

router.get("/promocoes", function (req, res, next) {
  res.render("promocoes", { title: "Promoções" });
});

router.get("/login", function (req, res, next) {
  res.render("login", { title: "login" });
});

router.get("/cadastro", function (req, res, next) {
  res.render("cadastro", { title: "cadastro" });
});

router.get("/indoor", function (req, res, next) {
  res.render("indoor", { title: "Sports Indoor" });
});



module.exports = router;
