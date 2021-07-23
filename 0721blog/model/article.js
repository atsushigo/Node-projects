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
	
	//獲取全部文章列表
	static getList(){
		return new Promise((resolve,reject)=>{
			let sql = "Select id,title,content,time From article ORDER BY time DESC"
			this.query(sql).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取部分種類 文章列表
	static getListByCategoryId(id){
		return new Promise((resolve,reject)=>{
			let sql = "Select id,title,content,time From article WHERE category_id = ? ORDER BY time DESC"
			this.query(sql,id).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//search 獲取指定關鍵詞的文章列表
	static getListByKeyword(keyword){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,title,content,time FROM article WHERE title LIKE ? ORDER BY time DESC"
			this.query(sql,"%"+keyword+"%").then(results=>{
				console.log(results)
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
}