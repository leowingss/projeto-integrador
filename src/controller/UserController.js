const { Usuario } = require("../../database/models");

const UserController = {
    create: (req, res) => {
        return res.render('/cadastro')
    },
    user: async(req, res) => {
        const { nome, email, senha } = req.body
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