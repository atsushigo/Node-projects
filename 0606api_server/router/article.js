const express = require("express")
const router = express.Router()
// 導入規則
const {articleRules} = require("../user-rules/article.js")
// 導入第三方驗證數據中間件
const expressJoi = require('@escook/express-joi')
// 導入multer解析formdata
const multer = require("multer")
// 導入express內置path模塊以暴露文件位置
const path = require("path")
// 實例化multer對象，通過dest屬性指定文件存放路徑 uploads資料夾
const upload = multer({dest:path.join(__dirname,"../uploads")})
const article = require("../router_handler/article.js")
// 發布文章路由
router.post("/add",upload.single('cover_img'),expressJoi(articleRules),article.addArticle)

module.exports = router