const db = require('./db')
module.exports = {

	getAll:function(tablename,callback){

		var sql = "select * from " +tablename+";"
		db.getResults(sql,function(results){
			callback(results)
		});
	},
	updateinfo:function(user,table,callback){

		var sql="";
		if(table=='user_info') sql = "update user_info set user_name='"+user.user_name+"' , email='"+user.user_email+"' , password='"+user.user_password+"' , phone='"+user.user_phone+"' where user_id='"+user.user_id+"';";
		else if(table=='booking_info') sql= "update booking_info set booking_date='"+user.booking_date+"' , booking_status='"+user.booking_status+"' where booking_id='"+user.booking_id+"';";
		else if(table=='hotel_info') sql = "update hotel_info set hotel_name='"+user.hotel_name+"' , hotel_address='"+user.hotel_address+"' , hotel_price='"+user.hotel_price+"' , hotel_description='"+user.hotel_description+"' , hotel_phone='"+user.hotel_phone+"' where hotel_id='"+user.hotel_id+"';";
		else if(table=='transport_info') sql = "update transport_info set transport_type='"+user.transport_type+"' , transport_phone='"+user.transport_phone+"' , driver_license='"+user.driver_license+"' where transport_id='"+user.transport_id+"';";
		db.execute(sql,function(status){
			callback(status)
		});		

	},
	deleteinfo:function(id,table,callback){

		var sql = "delete from "+table+" ";
		if(table=='user_info') sql+= "user_id = '"+id+"'";
		else if(table=='booking_info') sql+= "booking_id = '"+id+"'";
		else if(table=='hotel_info') sql+= "hotel_id = '"+id+"'";
		else if(table=='transport_info') sql+= "transport_id = '"+id+"'";
		else sql+= "forum_id = '"+id+"'";
		db.execute(sql,function(status){
			callback(status)
		});
	},
	hotelsearch:function(region,price1,price2,callback){
		
		if(region=='')
		{
			var sql = " select * from hotel_info where hotel_price >= "+price1+" and hotel_price <= "+price2+";"
			console.log(sql);
			db.getResults(sql,function(results){
				callback(results)
			})
		}
		else
		{
			var sql = " select * from hotel_info where hotel_region = '"+region+"' and hotel_price >= "+price1+" and hotel_price <= "+price2+";"
			db.getResults(sql,function(results){
				callback(results)
			})
		}
	}
}