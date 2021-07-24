module.exports = class User extends require('./model'){
	static login(username,password){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,username FROM `user` WHERE username = ? AND `password` = ?"
			this.query(sql,[username,password]).then(results=>{
				//這邊可以console.log(results) 和 console.log(results[0]) 看差別 [] 和 undefined
				resolve(results[0])
			}).catch(err=>{
				console.log("登入失敗")
				reject(err)
			})
		})
	}
}