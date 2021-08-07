const session = require('express-session')

const startSession = req => user => {
  req.session.user = {
    nome: user.nome,
    email: user.email
  }

  req.session.save()
}

const destroySession = req => () => {
  req.session.destroy()
}

const validateSession = (req, res, next) => {
  res.locals.isLogged = req.session && !!req.session.user
  res.locals.user = req.session && req.session.user

  req.startSession = startSession(req)
  req.destroySession = destroySession(req)

  next()
}

const configureSession = app => {
  app.set('trust proxy', 1) // trust first proxy
  app.use(
    session({
      secret: 'secret-app',
      resave: false,
      name: 'api-session-key',
      saveUninitialized: false
    })
  )

  app.use(validateSession)
}

module.exports = {
  configureSession
}
