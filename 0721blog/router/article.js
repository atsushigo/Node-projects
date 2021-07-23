//文章子應用
const express = require("express")
const articleApp = express()
//從中間件獲取數據
const article = require("../middleware/article.js")
//headers導航欄要傳值 所以要引入 導航欄需要的頁面資料
const category = require("../middleware/category.js")

articleApp.get("/list/:id", [article.getListByCategoryId, category.getCategory], (req, res) => {
	let {articles, categories} = req
	res.render("list", {
		articles: articles,
		categories: categories
	})
})

module.exports = articleApp
