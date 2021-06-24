const express = require("express")
const router = express.Router()
const userInfo = require("../router_handler/userinfo.js")
// 導入第三方驗證數據中間件
const expressJoi = require('@escook/express-joi')
// 導入自定義驗證規則
const {updateUserRules, updatePasswordRules, updatePicRules} = require("../user-rules/user.js")
// 用戶登入後獲取基本信息的路由 (攜帶token認證)
router.get("/userinfo",userInfo.getUserInfo)
// 用戶更新個人資訊路由
router.post("/userinfo",expressJoi(updateUserRules),userInfo.updateUserInfo)
// 更新密碼路由
router.post("/updatePassword",expressJoi(updatePasswordRules),userInfo.updatePassword)
// 更新大頭貼路由
router.post("/updatePic",expressJoi(updatePicRules),userInfo.updatePic)
module.exports = router