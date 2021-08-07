const express = require('express')
const router = express.Router()
const CartController = require('../controller/CartController')

router.get('/', CartController.add)
router.get('/:id/add', CartController.add)
router.get('/:id/remove', CartController.remove)

module.exports = router
