const Article = require("../model/article.js")
const Tab = require('../model/tab.js')
module.exports = {
	//獲取熱門文章
	getHot: (req,res,next)=>{
		Article.getHot(3).then(results=>{
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
			req.articles = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取指定關鍵詞的文章
	getListByKeyword:(req,res,next)=>{
		let keyword = req.query.keyword
		Article.getListByKeyword(keyword).then(results=>{
			req.articles = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取指定文章詳情頁
	getArticleById:(req,res,next)=>{
		//注意是從/:id 所以是params 不是 querystring
		let id = req.params.id
		Article.getArticleById(id).then(results=>{
			req.article = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取article頁下方標籤
	getTab:(req,res,next)=>{
		let id = req.params.id
		Tab.getTab(id).then(results=>{
			req.tabs = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
}