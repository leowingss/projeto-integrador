const express = require('express')
const router = express.Router()
const HomeController = require('../controller/HomeController')
const UserController = require('../controller/UserController')

/* GET home page. */
router.get('/', HomeController.home)

router.get('/index', (req, res, next) => {
  res.render('index', { title: 'Home' })
})

router.get('/login', UserController.pageLogin)
router.get('/logout', UserController.doLogout)
router.post('/login', UserController.doLogin)

module.exports = router
