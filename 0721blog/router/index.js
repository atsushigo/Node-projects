//首頁
const express = require("express")
const article = require("../middleware/article.js")
const indexApp = express()

indexApp.get("/",[article.getHot],(req,res)=>{
	res.render("index",{
		hots:req.hots,
	})
})

module.exports = indexApp