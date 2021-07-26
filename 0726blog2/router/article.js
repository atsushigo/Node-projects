//文章子應用
const express = require("express")
const articleApp = express()
//從中間件獲取數據
const article = require("../middleware/article.js")
//headers導航欄要傳值 所以要引入 導航欄需要的頁面資料
const category = require("../middleware/category.js")
//獲取用戶名稱
const auth = require("../middleware/auth.js")

//全局使用
articleApp.use(auth.getUser)
//傳categories是處理導航欄種類顯示區 可用成全局articleApp.use()中間件
//文章種類列表頁
articleApp.get("/list/:id", [article.getListByCategoryId, category.getCategory,category.getCategoryNameById], (req, res) => {
	let {articles, categories,category,user} = req
	res.render("list", {
		articles: articles,
		categories: categories,
		category:category,
		user:user
	})
})

//文章詳情頁
articleApp.get("/:id",[category.getCategory,article.getArticleById,article.getTab,article.getPrevArticle,article.getNextArticle],(req, res) => {
	let {categories,article,tabs,prev,next,user} = req
	res.render("article", {
		categories: categories,
		article:article,
		tabs:tabs,
		prev:prev,
		next:next,
		user:user
	})
})

module.exports = articleApp
