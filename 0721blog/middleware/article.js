const Article = require("../model/article.js")

module.exports = {
	//獲取熱門文章
	getHot: (req,res,next)=>{
		Article.getHot(3).then(results=>{
			console.log(results)
			req.hots = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	}
}