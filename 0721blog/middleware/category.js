const Category = require("../model/category.js")

module.exports = {
	//獲取最新文章
	getCategory:(req,res,next)=>{
		Category.getCategory().then(results=>{
			console.log(results)
			req.categories = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	}
}