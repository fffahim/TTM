const db = require('./db')
module.exports = {

	 insert : function(user,table,callback)
	 {
	 	var sql = "";
	 	if(table=='user_info') sql = "insert into user_info values ('','"+user.user_name+"', '"+user.user_email+"', '"+user.user_password+"', '"+user.user_phone+"');"
	 	console.log(sql)
	 	db.execute(sql,(status)=>{
	 		callback(status)
	 	})
	 }
}