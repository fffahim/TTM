const express = require('express')
const router = express.Router()
const adminModel = require.main.require('./models/adminModel')
router.get('/',(req,res)=>{
    adminModel.getAll('hotel_info',(results)=>{
		var region = new Set()
        var regions = []
		for(var i=0;i<results.length;i++)
		{
			region.add(results[i]['hotel_region'])
		}
		for (let item of region)
		{
			regions.push(item)
		}
		res.render('index',{'regions':regions})
	})
})
module.exports = router;