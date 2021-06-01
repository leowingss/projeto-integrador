const Sequelize = require('sequelize')
const { Produto } = require("../../database/models/Produto");

const ProdutoController = {
    destaque: (req, res) => {

        return res.render("destaques");
    }
}

module.exports = ProdutoController;