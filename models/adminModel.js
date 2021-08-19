const db = require('./db')
module.exports = {

	getAll:function(tablename,callback){

		var sql = "select * from " +tablename+";"
		db.getResults(sql,function(results){
			callback(results)
		});
	},
	getbyid:function(id,tablename,callback){
		var sql = "select * from " +tablename+" where user_id = "+id+";"
		db.getResults(sql,function(results){
			callback(results)
		});
	},
	getbybookingid:function(id,tablename,callback){
		var sql = "select * from " +tablename+" where booking_id = "+id+";"
		db.getResults(sql,function(results){
			callback(results)
		});
	},
	updateinfo:function(id,table,bstatus,callback){

		var sql="update "+table+" set booking_status = '"+bstatus+"' where booking_id = "+id+";"
		console.log(sql)
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
	hotelsearch:function(region,price1,price2,no_beds,callback){
		
		if(region=='')
		{
			var sql = " select * from hotel_info where hotel_price >= "+price1+" and hotel_price <= "+price2+" and no_beds = '"+no_beds+"';"
			console.log(sql);
			db.getResults(sql,function(results){
				callback(results)
			})
		}
		else
		{
			var sql = " select * from hotel_info where hotel_region = '"+region+"' and hotel_price >= "+price1+" and hotel_price <= "+price2+" and no_beds = '"+no_beds+"';"
			db.getResults(sql,function(results){
				callback(results)
			})
		}
	},
	transportsearch:function(pickup,dropoff,type,direction,callback){
		var flag=0
		var sql = "select * from transport_info "
		if(pickup!='' || dropoff!='' || type!='' || direction!='') sql+= "where "
		if(pickup!='')
		{
			sql+= "pickup = '"+pickup+"' "
			flag++
		}
		if(dropoff!='')
		{
			if(flag>0) sql+="and "
			sql+="dropoff= '"+dropoff+"' "
			flag++
		}
		if(type!='')
		{
			if(flag>0) sql+="and "
			sql+="transport_type= '"+type+"' "
			flag++
		}
		if(direction!='')
		{
			if(flag>0) sql+="and "
			sql+="direction = '"+direction+"' "
			flag++
		}
		console.log(sql)
		db.getResults(sql,(results)=>{
			callback(results)
		})
	}
}