const express = require('express')
const router = express.Router()
const adminModel	= require.main.require('./models/adminModel');
const pickuparr = []
const dropoffarr = []
router.get('/',(req,res)=>{
	
	adminModel.getAll('transport_info',(results)=>{
		var pickup = new Set()
        var dropoff = new Set()
		for(var i=0;i<results.length;i++)
		{
			pickup.add(results[i]['pickup'])
            dropoff.add(results[i]['dropoff'])
		}
		if(pickuparr.length==0)
		{
			for (let item of pickup)
			{
				pickuparr.push(item)
			}
		}
        if(dropoffarr.length==0)
		{
			for (let item of dropoff)
			{
				dropoffarr.push(item)
			}
		}
		res.render('transport',{'transports':results, 'pickup':pickuparr , 'dropoff':dropoffarr})
	})
})

router.post('/',(req,res)=>{
	var region = req.body.hotel_name
	var price1=0
	var price2=0
	var pricearray = req.body.hotel_price.split(" to ")
	if(req.body.hotel_price!='')
	{
		price1=parseInt(pricearray[0])
		price2= parseInt(pricearray[1])
	}
	adminModel.hotelsearch(region,price1,price2,(results)=>{
		res.render('hotels',{'hotels':results, 'regions':regions})
	})
})
module.exports = router