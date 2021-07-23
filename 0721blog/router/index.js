//首頁
const express = require("express")
const article = require("../middleware/article.js")
const category = require("../middleware/category.js")
const indexApp = express()

indexApp.get("/",[article.getHot,article.getList,category.getCategory],(req,res)=>{
	let {hots,articles,categories} = req
	res.render("index",{
		articles:articles,
		hots:hots,
		categories:categories
	})
})

module.exports = indexApp