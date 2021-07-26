//搜尋頁子應用
const express = require("express")
const searchApp = express()
//從中間件獲取數據
const article = require("../middleware/article.js")
//headers導航欄要傳值 所以要引入 導航欄需要的頁面資料
const category = require("../middleware/category.js")
//用session取名稱供導航欄用
const auth = require("../middleware/auth.js")
//這邊搜尋的model我是寫在article裡面 沒抽出來
searchApp.use(auth.getUser)

searchApp.get("/", [article.getListByKeyword,category.getCategory], (req, res) => {
	let {articles, categories,user} = req
	res.render("search", {
		articles: articles,
		categories: categories,
		keyword:req.query.keyword,
		user:user
	})
})

module.exports = searchApp
