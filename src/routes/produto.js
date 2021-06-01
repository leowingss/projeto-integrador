const express = require('express');
const router = express.Router();
const ProdutoController = require("../controller/ProdutoController")

router.get("/destaque", ProdutoController.destaque);

module.exports = router;