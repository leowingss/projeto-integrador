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






module.exports = router;