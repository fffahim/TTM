const cons = require('consolidate');
const express = require('express')
const adminModel = require.main.require('./models/adminModel')
const router = express.Router()
const {check,validationResult}=require('express-validator');
router.get('/',(req,res)=>{
	if(req.cookies['username']!=null)
	{
		adminModel.getAll('hotel_bookings',(results)=>{
			var hotels
			hotels = results
			adminModel.getAll('transport_bookings',(results)=>{
				var transports = results
				res.render('admin',{'hotels':hotels, 'transports':transports, 'ttable': "transport_bookings"})
			})
		})
	}
	else res.redirect('/login')
});
router.get('/:tablename',(req,res)=>{
	if(req.cookies['username']!= null)
	{
		var data = req.params.tablename;
		adminModel.getAll(data,(results)=>{
			res.render('test',{'result':results})
		})
	}
	else 
	{
		res.send("error")
	}
});
router.get('/delete/:id/:table',(res,req)=>{
	if(req.cookies['username']!= null)
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
router.get('/update/:table/:id/:status',(req,res)=>{
	var table = req.params.table
	var id = req.params.id
	var bstatus = req.params.status
	adminModel.updateinfo(id,table,bstatus,(status)=>{
		res.redirect('/admin');
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