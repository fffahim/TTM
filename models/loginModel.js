const db = require('./db')
module.exports = {

	validate:function(user,callback)
	{
		var sql = "select * from user_info where user_name = '"+user.user_name+"' and password='"+user.user_password+"';"
		console.log(sql)
		db.getResults(sql,(results)=>{
			console.log(results)
			callback(results.length);
		})
	}




}