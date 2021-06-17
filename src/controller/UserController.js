const { Usuario } = require("../../database/models");
const { validationResult } = require('express-validator')

const UserController = {
    create: (req, res) => {
        return res.render('cadastro')
    },
    user: async(req, res) => {
        const { nome, email, senha } = req.body
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            console.log(errors.mapped())
            return res.render('cadastro', { errors: errors.mapped(), old: req.body })
        }
        const result = await Usuario.create({
            nome,
            email,
            senha
        })
        console.log(result)
        return res.redirect('/')
    }
}

module.exports = UserController;