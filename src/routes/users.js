const express = require('express');
const router = express.Router();
const UserController = require('../controller/UserController')
const validateRegister = require('../middlewares/validation')
const { check } = require('express-validator')


router.get('/cadastro', UserController.create)
router.post('/cadastro', validateRegister, UserController.user)

module.exports = router