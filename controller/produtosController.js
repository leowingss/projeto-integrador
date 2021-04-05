const controlador = {
    titulo: function(req, res, next) {
    res.render('index', { title: 'E-commerce' });
}
}

module.exports = controlador;