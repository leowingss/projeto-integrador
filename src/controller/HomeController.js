const HomeController = {
  home: function (req, res, next) {
    res.render('index', { title: 'E-commerce' })
  },

  cart: function (req, res, next) {
    res.render('carrinho', { title: 'Carrinho de Compras' })
  }

}

module.exports = HomeController
