const express 		= require('express');
const bodyParser 	= require('body-parser');
const session 	= require('express-session');
const cookieParser 	= require('cookie-parser');
const path = require('path');
const cons = require('consolidate');
const login 		= require('./controller/login');
const logout 		= require('./controller/logout');
const register = require('./controller/registration');
const adminhome			= require('./controller/admincontroller/admin')
const booking = require('./controller/customercontroller/booking')
const hotels = require('./controller/hotels')
const payment = require('./controller/payment')
const transports = require('./controller/transports')
const home = require('./controller/home')
const app 			= express();
const { check, validationResult } = require('express-validator');
app.use('/static', express.static('static'));

app.engine('html', cons.swig)
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'html');
// app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(session({ secret: 'my secret value', saveUninitialized: true, resave: false }));
app.use(cookieParser());
//app.use(express.static(path.join(__dirname, '/public')));

app.use('',function(req, res, next) {
  var user_info = [req.session.user_name,req.session.user_email,req.session.user_phone]
  console.log(user_info)
  res.locals.glob = user_info;
  res.locals.glob_name = req.session.user_name
  next();
});
app.use('/login', login);
app.use('/register',register)
app.use('/logout', logout);
app.use('/admin',adminhome);
app.use('/booking',booking);
app.use('/hotels', hotels);
app.use('/transports', transports);
app.use('/payment', payment);
app.use('/', home);
// app.get('/', (req, res)=>{
// 	res.redirect('/home');	
// });
app.listen(3000, (error)=>{
	console.log('express server started at 3000...');
});