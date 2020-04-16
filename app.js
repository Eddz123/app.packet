var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
var app = express();
var sess = {
  secret: 'keyboard cat',
  cookie: {}
};


if (app.get('env') === 'production') {
  app.set('trust proxy', 1); // trust first proxy
  sess.cookie.secure = true // serve secure cookies
}


const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const dashboardRouter = require('./routes/dashboard');
const applicationformRouter = require('./routes/applicationform');
const rnapplicantsrouter = require('./routes/rn');
const mswapplicantsrouter = require('./routes/msw');
const scapplicantsrouter = require('./routes/sc');
const lvnapplicantsrouter = require('./routes/lvn');
const hhaapplicantsrouter = require('./routes/hha');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session(sess));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/dashboard', dashboardRouter);
app.use('/applicationform', applicationformRouter);
app.use('/rn', rnapplicantsrouter);
app.use('/msw', mswapplicantsrouter);
app.use('/sc', scapplicantsrouter);
app.use('/lvn', lvnapplicantsrouter);
app.use('/hha', hhaapplicantsrouter);



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
