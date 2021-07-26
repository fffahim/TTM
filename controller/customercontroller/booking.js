const express = require('express')
const router = express.Router()
const userModel = require.main.require("./models/userModel")
const adminModel = require.main.require("./models/adminModel")
router.post('/transport',(req,res)=>{

	if(req.session.user_id)
	{
		var transport_book = {
			user_id : req.session.user_id,
			user_phone : req.session.user_phone,
			user_email : req.session.user_email,
			name : req.body.name,
			pickup : req.body.pickup,
			dropoff : req.body.dropoff,
			price : req.body.price,
			time : req.body.time
		}
		userModel.insert(transport_book,'transport_bookings',(results)=>{
			console.log(results)
			res.redirect('/booking')
		})
	}
	else res.redirect('/login')
})
router.get('/',(req,res)=>{
	if(req.session.user_id)
	{
		var transports , hotels
		adminModel.getbyid(req.session.user_id,'transport_bookings',(results)=>{
			transports = results
			adminModel.getbyid(req.session.user_id,'hotel_bookings',(results)=>{
				hotels= results
				res.render('booking',{'hotels':hotels, 'transports':transports})
			})
		})
	}
	else res.redirect('/login')
})
router.post('/hotel',(req,res)=>{

	if(req.session.user_id)
	{
		var hotel_book = {
			user_id : req.session.user_id,
			user_phone : req.session.user_phone,
			user_email : req.session.user_email,
			date : req.body.booking_date,
			name : req.body.name,
			location : req.body.location,
			phone : req.body.phone,
			price : req.body.price,
		}
		userModel.insert(hotel_book,'hotel_bookings',(results)=>{
			console.log(results)
			res.redirect('/booking')
		})
	}
	else res.redirect('/login')
})

module.exports=router;