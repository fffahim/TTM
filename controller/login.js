const express 	= require('express');
const loginModel	= require.main.require('./models/loginModel');
const router 	= express.Router();

router.get('/', (req, res)=>{
	res.send("login")
})
router.post('/',(req,res)=>{
	var user={
		user_name : req.body.user_name,
		user_password: req.body.user_password
	}
	loginModel.validate(user,(results)=>{
		if(results>0)
		{
			res.cookie('username', req.body.user_name);
			res.send("ok")
		}
		else
		{
			res.send("again login")
		}
	})
})
module.exports = router;