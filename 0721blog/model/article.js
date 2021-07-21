//文章數據模型
//獲取熱門推薦文章
module.exports = class Article extends require('./model'){
	static getHot(num){
		return new Promise((resolve,reject)=>{
			let sql = "Select id,title,content,time From article Where hot = 1 LIMIT ?"
			this.query(sql,num).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取熱門推薦文章失敗:"+err.message)
				reject(err)
			})
		})
	}
}