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
    },
    showProducts: async(req, res) => {
        const { id } = req.params
        const produto = await Produto.findOne({
            where: {
                id
            }
        })
        let produtosRelacionados = await Produto.findAll({
            where: {
                categoria: produto.categoria
            }
        })
        produtosRelacionados = produtosRelacionados.sort(() => Math.random() - 0.5);
        produtosRelacionados.length = 4
        console.log(produto)
        return res.render('products', { produto, produtosRelacionados })
    },
    productPurchased: async(req, res) => {
        const { id } = req.params
        const produt = await Produto.findOne({
            where: {
                id
            }
        })

        return res.render('compraRealizada', { produt })
    }
}

module.exports = ProdutoController;