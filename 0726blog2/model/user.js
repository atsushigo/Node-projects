module.exports = class User extends require('./model'){
	//登入驗證
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
	//獲取用戶最後一次登入時間
	static lastLoginTime(){
		return new Promise((resolve,reject)=>{
			let sql = 'SELECT time FROM log WHERE handle = "登入" ORDER BY time DESC LIMIT 1'
			this.query(sql).then(results=>{
				//這邊可以console.log(results) 和 console.log(results[0]) 看差別 [] 和 undefined
				//results長這樣 RowDataPacket { time: 2021-07-21T14:00:15.000Z }
				resolve(results[0].time)
			}).catch(err=>{
				console.log("獲取用戶最後一次登入時間失敗")
				reject(err)
			})
		})
	}
}