const express = require('express');
const router = express.Router();
const mailer = require('./mailer')
const userModel = require.main.require('./models/userModel')
const {check,validationResult}=require('express-validator');
router.get('/',(req,res)=>{
	res.render('register');
})
router.post('/',[
	check('username','invalid').exists(),
	check('email','invalid').isEmail(),
	check('phone','invalid').exists(),
	check('password1','invalid').exists()
	],(req,res)=>{
	var errors = validationResult(req);
	if(!errors.isEmpty() && req.body.password1 != req.body.password2)
	{
		res.render('register',{'errors':errors})
	}
	else
	{
		var user ={
		user_name : req.body.username,
		user_email : req.body.email,
		user_password : req.body.password1,
		user_phone : req.body.phone

		}
		userModel.insert(user,'user_info',(status)=>{
			if(status)
			{
				// res.cookie('username',user.user_name);
				// req.session.user_name = req.body.username;
				if(user.user_name=='admin') res.redirect('/admin')
				else 
				{	
					const mailbody = `
						<p>Your account has been created successfully </p>
						<hr>
						<p>Username: ${req.body.username}</p>
						<p>Password: ${req.body.password1}</p>
						<p> Click this link to verify and login: http://localhost:3000/login</p>
						<p>Thanks,</p>
						<p>Morey Travel</p>
					`;
					mailer.mailSender( req.body.email,"Verify your account", mailbody);
					res.send("<center> <h3 style= 'margin-top: 50px;'> Please check your mail to confirm account. </h3> <img src='https://img.icons8.com/cotton/2x/checkmark.png' width='10%'></center>")
					//res.redirect('/send');
				}
			}
			else
			{
				res.redirect('/register')
			}
		})
	}
	
})
module.exports = router