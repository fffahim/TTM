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
	var pickup = req.body.pickup
	var dropoff = req.body.dropoff
	var type = req.body.type
	adminModel.transportsearch(pickup,dropoff,type,(results)=>{
		res.render('transport',{'transports':results, 'pickup':pickuparr , 'dropoff':dropoffarr})
	})
})
module.exports = router