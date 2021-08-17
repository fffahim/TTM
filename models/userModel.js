const db = require('./db')
module.exports = {

	 insert : function(user,table,callback)
	 {
	 	var sql = "";
	 	if(table=='user_info') sql = "insert into user_info values (NULL,'"+user.user_name+"', '"+user.user_email+"', '"+user.user_password+"', '"+user.user_phone+"');"
	 	else if(table=='transport_bookings') sql = "insert into transport_bookings values ( NULL, '"+user.user_id+"'  , '"+user.user_email+"'  , '"+user.user_phone+"'  , '"+user.name+"' , '"+user.pickup+"' , '"+user.dropoff+"' , '"+user.time+"' , '"+user.price+"' , 'pending', '"+user.booking_date+"', '"+user.direction+"', '"+user.no_persons+"' ); "
		else if(table=='hotel_bookings') sql = "insert into hotel_bookings values ( NULL, '"+user.user_id+"' , '"+user.user_email+"'  , '"+user.user_phone+"'  , '"+user.name+"' , '"+user.location+"' , '"+user.checkin_date+"' , '"+user.checkout_date+"' , '"+user.phone+"' , '"+user.price+"' , 'pending'); "  
		 console.log(sql)
	 	db.execute(sql,(status)=>{
	 		callback(status)
	 	})
	 },
	 delete : function(id,table,callback)
	 {
		var sql = "Delete from "+table+" where booking_id = "+id+"";
		console.log(sql);
		db.execute(sql,(status)=>{
			callback(status);
		})
	 }
}