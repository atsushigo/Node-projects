const express = require("express")
const router = express.Router()
// 處理用戶路由模塊
const userhandler = require("../router_handler/user.js")
// 導入第三方驗證數據中間件
const expressJoi = require('@escook/express-joi')
// 導入自定義驗證規則
const {userRules} = require("../user-rules/user.js")
router.post("/register",expressJoi(userRules),userhandler.regUser)
router.post("/login",expressJoi(userRules),userhandler.login)

module.exports = router