module.exports = class Tab extends require('./model'){
	static getTab(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,name FROM tabs WHERE article_id = ?"
			this.query(sql,id).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
}