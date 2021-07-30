const express = require("express")
const app = express()

//引入session
const session = require("cookie-session")
//模板引擎配置 用ejs渲染html 這樣就不用後綴改名成ejs檔
app.set("view engine","html")
app.set("views")
app.engine("html",require("ejs").renderFile)

//配置session
app.use(session({
	keys:["我是加密字串"],
	maxAge: 1000*60*30
}))
//配置post
app.use(express.urlencoded({ extended: true }) )
//靜態資源配置
app.use("/static",express.static("./static"))
//調用首頁router
app.use("/",require("./router/index"))
app.use("/index",require("./router/index"))
//調用article list頁 router
app.use("/article",require("./router/article.js"))
//搜索頁
app.use("/search",require("./router/search.js"))
//登入頁
app.use("/login",require("./router/login.js"))
//後台首頁
//後台權限驗證中間件
app.use("/admin",require("./middleware/auth.js").allowToAdmin)
app.use("/admin",require("./router/admin/index.js"))
//後台文章管理
app.use("/admin/article",require("./router/admin/article.js"))
//後台種類管理
app.use("/admin/category",require("./router/admin/category.js"))
//後台log日誌
app.use("/admin/log",require("./router/admin/log.js"))
//後台帳戶管理
app.use("/admin/account",require("./router/admin/account.js"))
//登出後頁面 (傳給它一個msg)
app.get("/user/logout",(req,res)=>{
	req.session = null
	res.render("login",{
		msg:"登出成功"
	})
})
app.listen(3000,()=>{
	console.log("跑在3000")
})