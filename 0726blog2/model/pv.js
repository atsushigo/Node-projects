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
	
	//獲取全部訪問量做成趨勢圖表
	//以後數據庫成長後可用數據庫優化查詢
	//SELECT time,hits FROM pv WHERE time < 某個數字 AND time > 某個數字 ORDER BY time
	static getVisitTrend(){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT DATE_FORMAT(time,'%Y-%c-%e') as time,hits FROM pv LIMIT 5"
			this.query(sql).then(results=>{
				//這邊可以console.log(results) 和 console.log(results[0]) 看差別 [] 和 undefined
				//返回數組
				console.log(results)
				resolve(results)
			}).catch(err=>{
				console.log("獲取訪問量做成趨勢圖表失敗")
				reject(err)
			})
		})
	}
}