const constroller = {
    home: function(req, res, next) {
        res.render("index", { title: "E-commerce" });
    },
    promo: (req, res, next) => {
        res.render("promocoes", { title: "Promoções" });
    },

};

module.exports = constroller;