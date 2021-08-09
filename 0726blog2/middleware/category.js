const Category = require("../model/category.js")

module.exports = {
	//獲取種類列表文章
	getCategory:(req,res,next)=>{
		Category.getCategory().then(results=>{
			req.categories = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取單一筆文章種類名稱
	getCategoryNameById:(req,res,next)=>{
		let id = req.params.id
		Category.getCategoryNameById(id).then(results=>{
			req.category = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取總種類數
	countTotalCategory:(req,res,next)=>{
		Category.countTotalCategory().then(results=>{
			req.categoryCount = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//新增單一種類
	addCategory:(req,res,next)=>{
		//post過來的name index
		let { name,index } = req.body
		Category.addCategory(name,index).then(results=>{
			req.insertId = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//刪除單一種類
	delCategory:(req,res,next)=>{
		//get過來的id
		let { id } = req.query
		Category.delCategory(id).then(results=>{
			req.affectedRows = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
}