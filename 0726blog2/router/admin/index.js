//後台首頁
const express = require("express")
const indexApp = express()
//上次登入時間顯示。導入user中間件封裝的最後一次登入時間方法
const user = require("../../middleware/user.js")
const pv = require("../../middleware/pv.js")
const article = require("../../middleware/article.js")
const category = require("../../middleware/category.js")

indexApp.get('/',[user.lastLoginTime,pv.getTotal,article.countTotalArticle,category.countTotalCategory],(req,res)=>{
	let {user,lastLoginTime,visit,articleCount,categoryCount} = req
	res.render("admin/index",{
		user:user,
		lastLoginTime:lastLoginTime,
		visit:visit,
		articleCount:articleCount,
		categoryCount:categoryCount,
	})
})

indexApp.get("/getdata",pv.getVisitTrend,(req,res)=>{
	let {visitTrend} = req
	let data = {}
	data = visitTrend
	res.json(data)
})

module.exports = indexApp