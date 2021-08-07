class Cart {
  constructor (items = []) {
    this.items = items
  }

  get (id) {
    return this.items.find(i => i.id === +id)
  }

  add (item) {
    const index = this.items.findIndex(i => i.id === item.id)

    if (this.items[index]) {
      this.items[index].quantidadeNoCarrinho += 1
      return this.items[index]
    }

    item.quantidadeNoCarrinho = 1
    this.items.push(item)

    return item
  }

  remove (itemId) {
    const index = this.items.findIndex(i => i.id === +itemId)

    if (!this.items[index]) return true

    this.items[index].quantidadeNoCarrinho -= 1

    if (this.items[index].quantidadeNoCarrinho < 1) {
      this.items = this.items.filter(i => !(i.id === +itemId))
    }

    return true
  }
}

module.exports = Cart
