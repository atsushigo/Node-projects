const Category = require("../model/category.js")

module.exports = {
	//獲取最新文章
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
}