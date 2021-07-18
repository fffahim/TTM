const express 		= require('express');
const bodyParser 	= require('body-parser');
const exSession 	= require('express-session');
const cookieParser 	= require('cookie-parser');
const path = require('path');
const cons = require('consolidate');
const login 		= require('./controller/login');
const logout 		= require('./controller/logout');
const register = require('./controller/registration');
const adminhome			= require('./controller/admincontroller/admin')
const customer = require('./controller/customercontroller/ccashboard')
const app 			= express();
const { check, validationResult } = require('express-validator');
app.use('/static', express.static('static'));

app.engine('html', cons.swig)
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'html');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(exSession({ secret: 'my secret value', saveUninitialized: true, resave: false }));
app.use(cookieParser());
//app.use(express.static(path.join(__dirname, '/public')));

app.use('/login', login);
app.use('/register',register)
app.use('/logout', logout);
app.use('/admin',adminhome);
app.use('/customer',customer);
app.get('/', (req, res)=>{
	res.render('index');	
});
app.listen(3000, (error)=>{
	console.log('express server started at 3000...');
});