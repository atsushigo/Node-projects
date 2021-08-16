module.exports = class Tab extends require('./model'){
	
	//取指定文章的標籤Tab
	static getTab(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,name FROM tabs WHERE article_id = ?"
			this.query(sql,id).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("取指定文章的標籤Tab失敗:"+err.message)
				reject(err)
			})
		})
	}
}