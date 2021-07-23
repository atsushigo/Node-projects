//文章種類數據模型
module.exports = class Category extends require('./model'){
	static getCategory(){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,`name` FROM category ORDER BY `index` DESC"
			this.query(sql).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章種類失敗:"+err.message)
				reject(err)
			})
		})
	}
}