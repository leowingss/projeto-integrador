const express = require('express')
const router = express.Router()
const ProdutoController = require('../controller/ProdutoController')

router.get('/equipamentos', ProdutoController.equipamentos)

router.get('/:id/produtos', ProdutoController.showProducts)

router.get('/femininoIndoor', ProdutoController.feminino)

router.get('/masculinoIndoor', ProdutoController.masculino)

router.get('/acessoriosIndoor', ProdutoController.acessorios)

router.get('/compra', (req, res, next) => {
  res.render('compraRealizada', { title: 'Compra Efetuada com Sucesso' })
})

router.get('/:id/compra', ProdutoController.productPurchased)

module.exports = router
