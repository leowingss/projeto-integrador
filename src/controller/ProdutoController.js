const ProdutoController = {
    destaque: (req, res, next) => {
        res.render("destaques", { title: "Destaques" });
    }
}

module.exports = ProdutoController;