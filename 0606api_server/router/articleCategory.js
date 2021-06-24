// 這是文章分類的模塊
const express = require("express")
const router = express.Router()
// 導入第三方驗證數據中間件
const expressJoi = require('@escook/express-joi')
// 導入自定義驗證規則
const {addCategoryRules,articleCategoryRules,getArticleCategorysByidRules,updateArticleRules} = require("../user-rules/articleCategory.js")
// 導入articleCategory方法模塊
const articleCategory = require("../router_handler/articleCategory.js")
// 獲取文章分類列表數據的路由
router.get("/cates",articleCategory.getArticleCategorys)
// 根據id獲取文章分類
router.get("/cates/:id",expressJoi(getArticleCategorysByidRules),articleCategory.getArticleCategorysByid)
// 新增文章分類路由
router.post("/addCategory",expressJoi(addCategoryRules),articleCategory.addArticleCategorys)
// 刪除文章分類接口
router.get("/deleteCategory/:id",expressJoi(articleCategoryRules),articleCategory.deleteArticleCategorys)
// 修改(更新)文章分類接口
router.post("/updateCategory",expressJoi(updateArticleRules),articleCategory.updateCategorys)
module.exports = router