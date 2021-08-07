const HomeController = {
  home: function (req, res, next) {
    res.render('index', { title: 'E-commerce' })
  }
}

module.exports = HomeController
