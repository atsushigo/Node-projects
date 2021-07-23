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
	},
	//獲取最新文章
	getList:(req,res,next)=>{
		Article.getList().then(results=>{
			console.log(results)
			req.articles = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取指定種類下文章
	getListByCategoryId:(req,res,next)=>{
		//從url獲取參數 EX: /article/list/1
		let id = req.params.id
		Article.getListByCategoryId(id).then(results=>{
			console.log(results)
			req.articles = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	}
}