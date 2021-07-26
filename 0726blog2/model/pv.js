//訪問量模型 (pv表)
module.exports = class PV extends require('./model'){
	//獲取總訪問量
	static getTotal(){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT SUM(hits) AS total FROM pv"
			this.query(sql).then(results=>{
				//這邊可以console.log(results) 和 console.log(results[0]) 看差別 [] 和 undefined
				console.log(results)
				resolve(results[0].total)
			}).catch(err=>{
				console.log("獲取訪問量失敗")
				reject(err)
			})
		})
	}
	
}