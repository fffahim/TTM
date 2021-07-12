const express 		= require('express');
const bodyParser 	= require('body-parser');
const exSession 	= require('express-session');
const cookieParser 	= require('cookie-parser');
const login 		= require('./controller/login');
const logout 		= require('./controller/logout');
const adminhome			= require('./controller/admincontroller/admin')
const app 			= express();
const { check, validationResult } = require('express-validator');

app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(exSession({ secret: 'my secret value', saveUninitialized: true, resave: false }));
app.use(cookieParser());

app.use('/login', login);
app.use('/logout', logout);
app.use('/admin',adminhome);
app.get('/', (req, res)=>{
	res.send('Hello from express server');	
});
app.listen(3000, (error)=>{
	console.log('express server started at 3000...');
});