const Sequelize = require('sequelize')
const { Produto } = require("../../database/models");

const ProdutoController = {
    equipamentos: async(req, res) => {
        const produtos = await Produto.findAll({
            where: {
                categoria: 'Equipamentos'
            }
        })
        console.log(produtos)
        return res.render("equipamentos", { produtos });
    },
    masculino: async(req, res) => {
        const produtoMasc = await Produto.findAll({
            where: {
                categoria: 'Masculino'
            }
        })
        return res.render("masculinoIndoor", { produtoMasc });
    },
    feminino: async(req, res) => {
        const produtoFem = await Produto.findAll({
            where: {
                categoria: 'Feminino'
            }
        })
        return res.render('femininoIndoor', { produtoFem })
    },
    acessorios: async(req, res) => {
        const produtoAce = await Produto.findAll({
            where: {
                categoria: 'Acessórios'
            }
        })
        return res.render('acessoriosIndoor', { produtoAce })
    }
}

module.exports = ProdutoController;