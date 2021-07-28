//首頁
const express = require("express")
const article = require("../middleware/article.js")
const category = require("../middleware/category.js")
const indexApp = express()
//使用session
const auth = require("../middleware/auth.js")
//獲取全部訪問量做成趨勢圖表接口
const pv = require("../middleware/pv.js")
//使用session
indexApp.use(auth.getUser)

//加載後台首頁
indexApp.get("/",[article.getHot,article.getList,category.getCategory],(req,res)=>{
	let {hots,articles,categories,user} = req
	res.render("index",{
		articles:articles,
		hots:hots,
		categories:categories,
		user:user
	})
})

//獲取全部訪問量做成趨勢圖表接口
indexApp.get("/pvs",[pv.getVisitTrend],(req,res)=>{
	let { visitTrend } = req
	let data = visitTrend
	console.log(data)
	res.json(data)
})

module.exports = indexApp