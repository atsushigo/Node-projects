const express = require("express")
const app = express()

//處理圖片上傳到upload資料夾 path fs 為multer需要用到所以原生引入
const multer = require("multer")
const path = require("path")
const fs = require("fs")
//引入session
const session = require("cookie-session")
//引入cors
const cors = require("cors")
//配置post  後台才可以拿到資料
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

//模板引擎配置 用ejs渲染html 這樣就不用後綴改名成ejs檔
app.set("view engine","html")
app.set("views")
app.engine("html",require("ejs").renderFile)

//配置session
app.use(session({
	keys:["我是加密字串"],
	maxAge: 1000*60*30
}))

//開cors
app.use(cors())
//先設定multer 再暴露static url
const upload = multer({
	dest:"./static/upload",
	limits:{
		fileSize:1024*1024*2 //單個大小文件限制在2M
	}
})
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
//上傳單文件操作
//如果上傳文件成功後 這個中間件會封裝一個file對象
//只有進行POST請求才會進行上傳操作
app.post("/admin",upload.single("upload"),(req,res,next)=>{
	//上傳成功後的文件對象
	//如果對象存在 說明客戶端上傳成功 服務器端再重命名
	let {file} = req
	//有文件上傳過來的話 我重命名(會需要 抓路徑+fs文件模塊)
	if(file){
		let extname = path.extname(file.originalname)//通過path中間件拿取文件名稱 (文件上傳之前原名稱)
		fs.renameSync(file.path,file.path+extname)//file.path是上傳後的文件路徑
		req.uploadUrl = "/upload/" + file.filename + extname //file.filename是上傳後的文件名
	}
	next()
})
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