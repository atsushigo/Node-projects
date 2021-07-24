const express = require("express")
const app = express()

//模板引擎配置 用ejs渲染html 這樣就不用後綴改名成ejs檔
app.set("view engine","html")
app.set("views")
app.engine("html",require("ejs").renderFile)

//配置post
app.use(express.urlencoded({ extended: true }) )
//靜態資源配置
app.use(express.static("static"))
//調用首頁router
app.use("/",require("./router/index"))
app.use("/index",require("./router/index"))
//調用article list頁 router
app.use("/article",require("./router/article.js"))
//搜索頁
app.use("/search",require("./router/search.js"))
//登入頁
app.use("/login",require("./router/login.js"))

app.listen(3000,()=>{
	console.log("跑在3000")
})