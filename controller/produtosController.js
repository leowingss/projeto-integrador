const controller = {
    titulo: function(req, res, next) {
    res.render('index', { title: 'E-commerce' });
}
}

module.exports = controller;