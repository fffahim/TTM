const express = require('express')
const router = express.Router()
const adminModel	= require.main.require('./models/adminModel');
const regions = []
router.get('/',(req,res)=>{
	
	adminModel.getAll('hotel_info',(results)=>{
		var region = new Set()
		for(var i=0;i<results.length;i++)
		{
			region.add(results[i]['hotel_region'])
		}
		if(regions.length==0)
		{
			for (let item of region)
			{
				regions.push(item)
			}
		}
		res.render('hotels',{'hotels':results, 'regions':regions})
	})
})

router.post('/',(req,res)=>{
	var region = req.body.hotel_region
	var price1=0
	var price2=0
	var pricearray = req.body.hotel_price.split(" to ")
	var no_beds = req.body.no_beds
	if(req.body.hotel_price!='')
	{
		price1=parseInt(pricearray[0])
		price2= parseInt(pricearray[1])
	}
	adminModel.hotelsearch(region,price1,price2,no_beds,(results)=>{
		res.render('hotels',{'hotels':results, 'regions':regions})
	})
})
module.exports = router