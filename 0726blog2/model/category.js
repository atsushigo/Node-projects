//文章種類數據模型
module.exports = class Category extends require('./model'){
	//獲取文章種類列表
	static getCategory(){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,`name`,`index` FROM category ORDER BY `index` DESC"
			this.query(sql).then(results=>{
				resolve(results)
			}).catch(err=>{
				console.log("獲取文章種類失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取單一筆文章種類名稱
	static getCategoryNameById(id){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT id,`name` FROM category WHERE id=?"
			this.query(sql,id).then(results=>{
				resolve(results[0])
			}).catch(err=>{
				console.log("獲取單一筆文章種類名稱失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//獲取總種類數
	static countTotalCategory(){
		return new Promise((resolve,reject)=>{
			let sql = "SELECT COUNT(id) AS count FROM category"
			this.query(sql).then(results=>{
				resolve(results[0].count)
			}).catch(err=>{
				console.log("獲取總種類數:"+err.message)
				reject(err)
			})
		})
	}
	
	//種類管理頁
	//新增種類 ()
	static addCategory(name,index){
		return new Promise((resolve,reject)=>{
			let sql = "INSERT INTO category (`name`,`index`) VALUES (?,?)"
			this.query(sql,[name,index]).then(results=>{
				resolve(results.insertId)
			}).catch(err=>{
				console.log("新增種類失敗:"+err.message)
				reject(err)
			})
		})
	}
	
	//刪除單一筆種類
	static delCategory(id){
		return new Promise((resolve,reject)=>{
			let sql = "DELETE FROM category WHERE id = ?"
			this.query(sql,id).then(results=>{
				resolve(results.affectedRows)
			}).catch(err=>{
				console.log("刪除單一筆種類失敗:"+err.message)
				reject(err)
			})
		})
	}
}