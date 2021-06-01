const Sequelize = require('sequelize')
const { Produto } = require("../../database/models");

const ProdutoController = {
    equipamentos: async(req, res) => {
        const produtos = await Produto.findAll({
            where: {
                categoria: 'Equipamentos'
            }
        })
        return res.render("equipamentos", { produtos });

    }
}

module.exports = ProdutoController;