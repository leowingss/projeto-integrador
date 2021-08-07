const { Usuario } = require('../../database/models')
const { validationResult } = require('express-validator')
const bcrypt = require('bcrypt')

const hash = text => bcrypt.hashSync(text, 10)
const verify = (text, token) => bcrypt.compareSync(text, token)

const UserController = {
  pageRegister: (req, res) => {
    return res.render('cadastro')
  },

  pageLogin: (req, res) => {
    res.render('login', { title: 'login' })
  },

  doLogin: async (req, res) => {
    const { email, senha } = req.body

    const user = await Usuario.findOne({ where: { email } })

    if (!verify(senha, user.senha)) {
      return res.render('login', {
        title: 'login',
        error: 'Usuario ou senha inválidos'
      })
    }

    req.startSession(user)

    res.redirect('/')
  },

  doLogout: (req, res) => {
    req.destroySession()
    res.redirect('/')
  },

  doRegister: async (req, res) => {
    const { nome, email, senha } = req.body
    const senhaHash = hash(senha)
    const errors = validationResult(req)
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
    return res.redirect('/login')
  }
}

module.exports = UserController
