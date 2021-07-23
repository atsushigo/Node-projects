//文章子應用
const express = require("express")
const articleApp = express()
//從中間件獲取數據
const article = require("../middleware/article.js")
//headers導航欄要傳值 所以要引入 導航欄需要的頁面資料
const category = require("../middleware/category.js")

articleApp.get("/list/:id", [article.getListByCategoryId, category.getCategory,category.getCategoryNameById], (req, res) => {
	let {articles, categories,category} = req
	res.render("list", {
		articles: articles,
		categories: categories,
		category:category
	})
})

module.exports = articleApp
