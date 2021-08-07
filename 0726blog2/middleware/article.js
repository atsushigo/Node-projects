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
	
	//獲取上一篇文章
	getPrevArticle:(req,res,next)=>{
		let id = req.params.id
		Article.getPrevArticle(id).then(results=>{
			req.prev = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取下一篇文章
	getNextArticle:(req,res,next)=>{
		let id = req.params.id
		Article.getNextArticle(id).then(results=>{
			req.next = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取總文章數
	countTotalArticle:(req,res,next)=>{
		Article.countTotalArticle(req.query.category_id,req.query.hot).then(results=>{
			req.articleCount = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//獲取後台文章列表 (做分頁功能) 即指定頁
	getPage:(req,res,next)=>{
		//兩個參數 透過res從model層傳過來
		Article.getPage(res.start,res.size,req.query.category_id,req.query.hot).then(results=>{
			req.pageList = results
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//設置熱門推薦
	setHot:(req,res,next)=>{
		//這邊參數是從url取 querystring
		let { id,hot } = req.query
		Article.setHot(id,hot).then(results=>{
			req.affectedRows = results.affectedRows
			next()
		}).catch(err=>{
			//把錯誤用到index去接收
			next(err)
		})
	},
	
	//添加文章
	add:(req,res,next)=>{
		//POST過來的資料包裝成article對象
		const {title,content,hot,category_id} = req.body
		
		const article = {
			title:title,
			content:content,
			hot:hot?1:0,
			category_id:category_id,
			thumbnail:req.uploadUrl? req.uploadUrl:null
		}
		console.log(article)
		//直接把對象傳到model層
		 Article.add(article).then(results=>{
		 	req.insertId = results
		 	next()
		 }).catch(err=>{
		 	//把錯誤用到index去接收
		 	next(err)
		 })
	},
}