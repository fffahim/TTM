const express = require('express')
const router = express.Router()

router.get('/',(req,res)=>{

	if(req.cookies['username']!=null)
	{
		res.render('customer')
	}
	else res.redirect('/login')
})

module.exports=router;