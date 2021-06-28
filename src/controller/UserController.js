const { Usuario } = require("../../database/models");
const { validationResult } = require('express-validator')
const bcrypt = require('bcrypt')

const UserController = {
    create: (req, res) => {
        return res.render('cadastro')
    },
    user: async(req, res) => {
        const { nome, email, senha } = req.body
        const senhaHash = bcrypt.hashSync(senha, 10)
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            console.log(errors.mapped())
            return res.render('cadastro', { errors: errors.mapped(), old: req.body })
        }
        const result = await Usuario.create({
            nome,
            email,
            senha: senhaHash
        })
        console.log(result)
        return res.redirect('/')
    }
}

module.exports = UserController;