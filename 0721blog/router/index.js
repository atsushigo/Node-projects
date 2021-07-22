//首頁
const express = require("express")
const article = require("../middleware/article.js")
const indexApp = express()

indexApp.get("/",[article.getHot,article.getList],(req,res)=>{
	let {hots,articles} = req
	res.render("index",{
		articles:articles,
		hots:hots,
	})
})

module.exports = indexApp