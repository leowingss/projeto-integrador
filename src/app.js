const createError = require('http-errors')
const express = require('express')
const path = require('path')
const cookieParser = require('cookie-parser')
const logger = require('morgan')
const indexRouter = require('./routes/index')
const produtoRouter = require('./routes/produto')
const userRouter = require('./routes/users')
const cartRouter = require('./routes/cart')
const { configureSession } = require('./middlewares/session')
const app = express()

// view engine setup
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')

app.use(logger('dev'))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(express.static(path.join(__dirname, '../public')))

configureSession(app)

app.use('/', indexRouter)
app.use('/produto', produtoRouter)
app.use('/users', userRouter)
app.use('/carrinho', cartRouter)

app.use((req, res) => {
  return res.status(404).render('not-found')
})

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404))
})

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message
  res.locals.error = req.app.get('env') === 'development' ? err : {}

  // render the error page
  res.status(err.status || 500)
  res.render('error')
})

module.exports = app
