const express = require("express")
const articleApp = express()
//這邊是 http://localhost:3000/admin
//引入後台 article頁的 中間件
const article = require("../../middleware/article.js")
articleApp.get("/",[article.getPage,article.countTotalArticle],(req,res)=>{
	let {user,pageList,articleCount} = req
	//不用做分頁的話是返回 pageList 就好 
	//做分頁所以要封裝page{}對象裡面list{}是所有每一筆article資料的集合 page.list 這樣供前端調用
	//即page.list.article[0] 取第一筆資料對象的概念
	//每頁5條
	let size = 5
	//
	let page = {}
	page.list = pageList
	page.count = articleCount
	page.total = Math.ceil(page.count/size) //無條件進位 => 總數量➗5後還剩幾筆資料在最後一頁 所以進位(或無條件捨去+1)
	//p代表此頁頁數 判斷p在多少 0<page.p<page.total 意即第一頁～最大頁數頁
	page.p = req.query.p ? req.query.p : 1
	//page.p是否大於總頁數
	page.p = page.p > page.total ? page.total : page.p
	//page.p是否小於第一頁
	page.p = page.p < 1 ? 1 : page.p
	res.render("admin/article/index",{
		//因為在最上面header右上方要顯示使用者名稱
		user:user,
		page:page,
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


module.exports = articleApp