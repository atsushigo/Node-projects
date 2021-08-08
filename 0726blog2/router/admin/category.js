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

module.exports = categoryApp