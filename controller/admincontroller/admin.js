const express = require('express')
const adminModel = require.main.require('./models/adminModel')
const router = express.Router()
const {check,validationResult}=require('express-validator');
router.get('/:tablename',(req,res)=>{
	if(req.cookie['username']!=NULL)
	{
		var data = req.params.tablename;
		adminModel.getAll(data,(results)=>{
			res.send(results)
		})
	}
	else 
	{
		res.send("error")
	}
});
router.get('/delete/:id/:table',(res,req)=>{
	if(req.cookie['username']!=NULL)
	{
		var id = req.params.id;
		var table = req.params.table
		adminModel.deleteinfo(id,table,(results)=>{
			res.send(results)
		})
	}
	else 
	{
		res.send("error")
	}
});
router.post('/update/:table/',(res,req)=>{
	var table = req.params.table;
	var user;
	if(table=='user_info') 
	{
		user = {
			user_name : req.body.user_name,
			user_id : req.body.user_id,
			user_email : req.body.user_email,
			user_password : req.body.user_password,
			user_phone : req.body.user_phone
		}
	}
	else if(table=='booking_info')
	{
		user = {
			booking_id : req.body.booking_id,
			booking_date : req.body.booking_date,
			booking_status : req.body.booking_status
		}
	}
	else if(table=='hotel_info')
	{
		user = {
			hotel_name : req.body.hotel_name,
			hotel_id : req.body.hotel_id,
			hotel_address : req.body.hotel_address,
			hotel_price : req.body.hotel_price,
			hotel_description : req.body.hotel_description,
			hotel_phone : req.body.hotel_phone
		}
	}
	else if(table=='transport_info')
	{
		user = {
			transport_type : req.body.transport_type,
			transport_id : req.body.transport_id,
			driver_license : req.body.driver_license,
			transport_phone : req.body.transport_phone
		}
	}
	adminModel.updateinfo(user,table,(status)=>{
		res.send(status)
	})
});
router.post('/v1/order/order-placement',[
	check('sender_info.sender_location').exists().isLength({min:1})
	],(req,res)=>{
		const errors = validationResult(req);
		console.log(errors);
		// if(errors.isEmpty())
		// {
		// 	var user = {
		// 		id : req.body['id'],
		// 		order_id : req.body['order_id'],
		// 		sender_name : req.body['sender_name'],				
		// 		sender_mobile : req.body['sender_mobile'],
		// 		sender_location : req.body['sender_location'],
		// 		receiver_name : req.body['receiver_name'],				
		// 		receiver_mobile : req.body['receiver_mobile'],
		// 		receiver_location : req.body['receiver_location'],
		// 		order_date : req.body['order_date'],
		// 		payment_method : req.body['payment_method'],
		// 		total_ammount : req.body['total_ammount'],
		// 		order_status : req.body['order_status'],
		// 		product_name : req.body['product_name'],
		// 		product_image : req.body['product_image'],
		// 		weight : req.body['weight'],
		// 		price : req.body['price'],
		// 		category : req.body['category']
		// 	}
		// 	percelModel.DataExistsCheck(user, function(results){
		// 		console.log(results);
		// 		if(results.length == 0)
		// 		{console.log("resLen",results);
		// 			percelModel.insert(user,'order_table', function(results){
		// 				if(results)
		// 				{console.log("orderTbl insert",results);
		// 						percelModel.insert(user,'product_table', function(results){
		// 							if(results)
		// 							{
		// 								res.send("200 HTTP: "+req.body['order_id']+" order successfully placed ")
		// 							}else{res.send("product tbl order failed")}
		// 						})
		// 				}else{res.send("order tbl failed")}
		// 			})
		// 		}
		// 		else
		// 		{
		// 			res.send(req.body['order_id']+" already exists");
		// 		}
				
		// 	})
			
		// }
		// else res.send("200 HTTP: "+req.body['order_id']+" order not inserted ")
		res.send(req.body['sender_info']['sender_location'])
	
})
module.exports = router;