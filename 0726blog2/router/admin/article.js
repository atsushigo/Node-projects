const express = require("express")
const articleApp = express()
//這邊是 http://localhost:3000/admin
//引入後台 article頁的 中間件
const article = require("../../middleware/article.js")
articleApp.get("/",[article.getPage],(req,res)=>{
	let {user,pageList} = req
	//不用做分頁的話是返回 pageList 就好 
	//做分頁所以要封裝page{}對象裡面list{}是所有每一筆article資料的集合 page.list 這樣供前端調用
	//即page.list.article[0] 取第一筆資料對象的概念
	let page = {}
	page.list = pageList
	res.render("admin/article/index",{
		//因為在最上面header右上方要顯示使用者名稱
		user:user,
		page:page
	})
})

articleApp.get("/add",(req,res)=>{
	res.render("admin/article/add",{
		//因為在最上面header右上方要顯示使用者名稱
		user:req.user
	})
})

articleApp.get("/edit",(req,res)=>{
	res.render("admin/article/edit",{
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