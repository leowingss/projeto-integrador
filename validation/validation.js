const { check } = require('express-validator')

const validateRegister = [
    check('name')
    .notEmpty().withMessage('O nome deve ser preenchido').bail(),
    check('email')
    .notEmpty().withMessage('O email deve ser preenchido').bail()
    .isEmail().withMessage('O email deve ser válido'),
    check('password')
    .notEmpty().withMessage('A senha deve ser preenchida').bail()
    .isLength({ min: 6 }).withMessage('A senha deve ter no mínimo 6 caracteres')

]

module.exports = validateRegister