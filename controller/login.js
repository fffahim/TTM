const express 	= require('express');
const loginModel	= require.main.require('./models/loginModel');
const router 	= express.Router();

router.get('/', (req, res)=>{
	res.render('login')
})
router.post('/',(req,res)=>{
	var user={
		user_name : req.body.username,
		user_password: req.body.password
	}
	loginModel.validate(user,(results)=>{
		if(results>0)
		{
			res.cookie('username', req.body.username);
			if(user.user_name=='admin') res.redirect('/admin')
			else res.redirect('/customer')	
		}
		else
		{
			res.redirect('/login')
		}
	})
})
module.exports = router;