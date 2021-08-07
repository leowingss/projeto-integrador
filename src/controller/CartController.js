const { Produto } = require('../../database/models')

class CartController {
  static async add (req, res) {
    const { id } = req.params
    const produto = await Produto.findOne({
      where: {
        id
      }
    })

    res.locals.cart.add(produto.dataValues)

    req.session.items = res.locals.cart.items

    res.redirect(`/produto/${id}/produtos`)
  }

  static remove (req, res) {
    const { id } = req.params

    res.locals.cart.remove(id)

    req.session.items = res.locals.cart.items

    res.redirect(`/produto/${id}/produtos`)
  }
}

module.exports = CartController
