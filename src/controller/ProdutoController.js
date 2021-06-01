const Sequelize = require('sequelize')
const { Produto } = require("../../database/models");

const ProdutoController = {
    destaque: async (req, res) => {
        const produtos = await Produto.findAll({
            where:{
                categoria: 'Equipamentos'
            }
        })
        return res.render("destaques", {produtos});
        console.log(produtos)
    }
}

module.exports = ProdutoController;