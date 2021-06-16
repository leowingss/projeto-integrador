const express = require('express');
const router = express.Router();
const UserController = require('../controller/UserController')
const validateRegister = require('../../middlewares/validation')


router.get('/cadastro', UserController.create)
router.post('/cadastro', UserController.user)

module.exports = router