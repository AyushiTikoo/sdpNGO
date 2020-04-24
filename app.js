var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var index1Router = require('./routes/index1');

var ordersRouter = require('./routes/orders');
var customerRouter = require('./routes/customer');
var loginRouter = require('./routes/login');
var donarRouter = require('./routes/donar');
var frontRouter = require('./routes/frontPage');
var loginCRouter = require('./routes/loginC');
var donarCRouter = require('./routes/donarC');
var thanksRouter = require('./routes/thanks');
var dashboardRouter = require('./routes/dashboard');
var otherRouter = require('./routes/other');
var othersCRouter = require('./routes/othersC');
var thanksOthersRouter = require('./routes/thanksOthers');
var feedbackRouter = require('./routes/feedback');
var feedbackCRouter = require('./routes/feedbackC');
var thanksFeedbackRouter = require('./routes/thanksFeedback');
var ordersCRouter = require('./routes/ordersC');
var thanksEventRegisterRouter = require('./routes/thanksEventRegister');
var volunteerRouter = require('./routes/volunteer');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', frontRouter);

app.use('/orders', ordersRouter);
app.use('/customer', customerRouter);
app.use('/index1', index1Router);
app.use('/login', loginRouter);
app.use('/donar', donarRouter);
app.use('/index', indexRouter);
app.use('/loginC', loginCRouter);
app.use('/donarC', donarCRouter );
app.use('/thanks',thanksRouter);
app.use('/dashboard',dashboardRouter);
app.use('/other', otherRouter );
app.use('/othersC', othersCRouter );
app.use('/thanksOthers',thanksOthersRouter);
app.use('/feedbackC',feedbackCRouter);
app.use('/thanksFeedback',thanksFeedbackRouter);
app.use('/ordersC', ordersCRouter);
app.use('/thanksEventRegister',thanksEventRegisterRouter);
app.use('/feedback',feedbackRouter);
app.use('/volunteer',volunteerRouter)
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
