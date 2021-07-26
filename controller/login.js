const express 	= require('express');
const loginModel	= require.main.require('./models/loginModel');
const router 	= express.Router();

router.get('/', (req, res)=>{
	res.render('login')
})
router.post('/',(req,res)=>{
	console.log(req.body)
	var user={
		user_name : req.body.username,
		user_password: req.body.password
	}
	loginModel.validate(user,(results)=>{
		if(results.length>0)
		{
			res.cookie('username', req.body.username);
			req.session.user_name = req.body.username;
			req.session.user_id = results[0]['user_id'];
			req.session.user_email = results[0]['email'];
			req.session.user_phone = results[0]['phone'];
			if(user.user_name=='admin') res.redirect('/admin')
			else res.redirect('/')	
		}
		else
		{
			res.redirect('/login')
		}
	})
})
module.exports = router;