//首頁
const express = require("express")
const article = require("../middleware/article.js")
const category = require("../middleware/category.js")
const indexApp = express()
//使用session
const auth = require("../middleware/auth.js")
//使用session
indexApp.use(auth.getUser)

indexApp.get("/",[article.getHot,article.getList,category.getCategory],(req,res)=>{
	let {hots,articles,categories,user} = req
	res.render("index",{
		articles:articles,
		hots:hots,
		categories:categories,
		user:user
	})
})

module.exports = indexApp