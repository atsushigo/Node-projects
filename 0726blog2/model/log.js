//日誌數據模型
module.exports = class Log extends require('./model'){
	static getPage(start,size){
		return new Promise((resolve,reject)=>{
			//順便做分頁
			let sql = "SELECT id, handle, `time`, ip FROM log ORDER BY `time` DESC LIMIT ?,?"
			this.query(sql,[start,size]).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取日誌列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	static getCount(){
		return new Promise((resolve,reject)=>{
		//獲取日誌總條目數量
		//取回傳的results[0]數量
		let sql = "SELECT COUNT(1) as count FROM log"
		this.query(sql).then(results=>{
			resolve(results[0].count)
		}).catch(err=>{
			console.log("獲取日誌總條目數量失敗"+err.message)
			reject(err)
			})
		})
	}
	
	//添加日誌
	static add(log){
		return new Promise((resolve,reject)=>{
		let sql = "INSERT INTO log SET ?"
		this.query(sql,log).then(results=>{
			resolve(results.affectedRows)
		}).catch(err=>{
			console.log("添加日誌失敗"+err.message)
			reject(err)
			})
		})
	}
}