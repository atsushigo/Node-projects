//搜尋頁子應用
const express = require("express")
const searchApp = express()
//從中間件獲取數據
const article = require("../middleware/article.js")
//headers導航欄要傳值 所以要引入 導航欄需要的頁面資料
const category = require("../middleware/category.js")

//這邊搜尋的model我是寫在article裡面 沒抽出來

searchApp.get("/", [article.getListByKeyword,category.getCategory], (req, res) => {
	let {articles, categories} = req
	res.render("search", {
		articles: articles,
		categories: categories,
	})
})

module.exports = searchApp
