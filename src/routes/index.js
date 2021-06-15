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

router.get("/cadastro", (req, res, next) => {
    res.render("cadastro", { title: "cadastro" });
});




module.exports = router;