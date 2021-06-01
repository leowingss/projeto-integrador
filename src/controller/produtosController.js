const constroller = {
    home: function(req, res, next) {
        res.render("index", { title: "E-commerce" });
    },
    destaque: (req, res, next) => {
        res.render("destaques", { title: "Destaques" });
    },

};

module.exports = constroller;