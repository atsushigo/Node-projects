const express = require("express")
const categoryApp = express()

const category = require("../../middleware/category.js")

categoryApp.get("/",category.getCategory,(req,res)=>{
	let {categories,user} = req
	res.render("admin/category/index",{
		user:user,
		categories:categories
	})
})

//種類管理頁 新增種類
categoryApp.post("/add",category.addCategory,(req,res)=>{
	let {insertId,user} = req
	if(insertId > 0) return res.json({code:1,message:"添加成功"})
	res.json({code:0,message:"添加失敗"})
})

module.exports = categoryApp