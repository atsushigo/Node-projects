const express = require("express")
const articleApp = express()
//這邊是 http://localhost:3000/admin
articleApp.get("/",(req,res)=>{
	res.render("admin/article/index",{
		//因為在最上面header右上方要顯示使用者名稱
		user:req.user
	})
})

articleApp.get("/add",(req,res)=>{
	res.render("admin/article/add",{
		//因為在最上面header右上方要顯示使用者名稱
		user:req.user
	})
})

articleApp.get("/category",(req,res)=>{
	res.render("admin/category/index",{
		//因為在最上面header右上方要顯示使用者名稱
		user:req.user
	})
})

articleApp.get("/article",(req,res)=>{
	res.render("admin/index",{
		//因為在最上面header右上方要顯示使用者名稱
		user:req.user
	})
})

module.exports = articleApp