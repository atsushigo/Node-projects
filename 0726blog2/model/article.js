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
			let sql = "Select id,title,content,time FROM article ORDER BY time DESC"
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
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取指定文章頁面詳情
	static getArticleById(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT a.id,a.content,a.title,a.time,a.hits,a.category_id,c.name FROM article a, category c WHERE a.id = ? AND a.category_id = c.id"
			this.query(sql,id).then(results=>{
				resolve(results[0])
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取上一篇文章頁面詳情
	static getPrevArticle(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,title FROM article WHERE id < ? ORDER BY id DESC LIMIT 1"
			this.query(sql,id).then(results=>{
				resolve(results[0])
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取下一篇文章頁面詳情
	static getNextArticle(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,title FROM article WHERE id > ? ORDER BY id LIMIT 1"
			this.query(sql,id).then(results=>{
				resolve(results[0])
			}).catch(err=>{
				console.log("獲取文章列表失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取總文章數
	//countTotalArticle()這函數呼叫後返回 
	//1.該篩選條件(category_id,hot)(即種類名以及是否為熱搜) 有條件的總文章數
	//2.如果沒傳參-> countTotalArticle() 則希望返回的      沒有任何條件的總文章數
	//這邊先練習用SQL拼接，之後要解決一下SQL注入問題
	static countTotalArticle(category_id,hot){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT COUNT(id) AS count FROM article WHERE 1=1 "
			sql += category_id != -1 && category_id ? "AND category_id"+"="+category_id : ""
			sql += hot != -1 && hot ? " AND hot = "+hot : ""
			this.query(sql).then(results=>{
				resolve(results[0].count)
			}).catch(err=>{
				console.log("獲取總文章數失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取後台文章列表 (做分頁功能) 即指定頁
	//直接撈全部資料不分頁: getPage() 然後 sql參數不LIMIT就好 SELECT id,title,thumbnail,hot FROM article ORDER BY time DESC
	//撈分頁資料:getPage(page.p,size)
	//分頁邏輯(這邊以每頁五筆資料示範) 
	//第一頁語句SELECT id,title,thumbnail,hot FROM article ORDER BY time DESC LIMIT 0,5 
	//第二頁語句SELECT id,title,thumbnail,hot FROM article ORDER BY time DESC LIMIT 5,5 
	//第三頁語句SELECT id,title,thumbnail,hot FROM article ORDER BY time DESC LIMIT 10,5 
	//這邊分頁過後還有分類跟是否是熱搜的篩選邏輯，所以參數是getPage(start,size,category_id,hot)
	//1.篩選條件(category_id,hot)(即種類名以及是否為熱搜) 有條件的撈資料
	//2.撈分頁資料:(page.p,size)
	static getPage(start,size,category_id,hot){
		return new Promise((resolve,reject)=>{
			//一般撈分頁語句
			// let sql = "SELECT id,title,thumbnail,hot FROM article ORDER BY time DESC LIMIT ?,?"
			//加上篩選條件分頁語句
			let sql = "SELECT id,title,thumbnail,hot FROM article WHERE 1=1 "
			
			sql += category_id != -1 && category_id ? " AND category_id"+"="+category_id : ""
			sql += hot != -1 && hot ? " AND hot = "+hot : ""
			
			sql += " ORDER BY time DESC LIMIT ?,?"
			this.query(sql,[start,size]).then(results=>{
				console.log(results)
				resolve(results)
			}).catch(err=>{
				console.log("獲取總文章數失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//article頁面設置hot值 0或1
	static setHot(id,hot){
		return new Promise((resolve,reject)=>{
			let sql = "UPDATE article SET hot = ? WHERE id = ?"
			this.query(sql,[hot,id]).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取熱門失敗:"+err.message)
				reject(err)
			})
		})
	}
}