const express = require('express');
const router = express.Router();
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
				res.cookie('username',user.user_name);
				if(user.user_name=='admin') res.redirect('/admin')
				else res.redirect('/customer')
			}
			else
			{
				res.redirect('/register')
			}
		})
	}
	
})
module.exports = router