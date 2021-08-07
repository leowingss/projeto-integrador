const { check } = require('express-validator')

const validateRegister = [
  check('nome')
    .notEmpty()
    .withMessage('O nome deve ser preenchido')
    .bail(),
  check('email')
    .notEmpty()
    .withMessage('O email deve ser preenchido')
    .bail()
    .isEmail()
    .withMessage('O email deve ser válido'),
  check('senha')
    .isLength({ min: 6 })
    .withMessage('A senha deve ter no mínimo 6 caracteres')
    .notEmpty()
    .withMessage('A senha deve ser preenchida')
    .bail()
]

module.exports = validateRegister
