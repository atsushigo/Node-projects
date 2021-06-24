const express = require("express")
const app = express()
const cors = require("cors")
const userrouter = require("./router/user.js")
const userinfoRouter = require("./router/userinfo.js")
const articleCategory = require("./router/articleCategory.js")
const articleRouter = require("./router/article.js")
//這邊導入因為捕抓錯誤中間件訊息返回是錯在驗證錯誤的部分
const joi = require('joi')
const expressJoi = require('@escook/express-joi')
// 
// 全局處理token
const expressJWT = require("express-jwt")
const jwtconfig = require("./config/jwtconfig.js")
app.use(express.urlencoded({extended:false}))
app.use(cors())
//託管靜態資源
app.use("/uploads",express.static("./uploads"))
app.use("/",express.static("./apidoc"))
// 一定要在解析路由前配置token中間件確保身份
app.use(expressJWT({secret:jwtconfig.jwtSecretKey}).unless({path:[/^\/api\//]}))

app.use("/api",userrouter)

app.get("/",(req,res)=>{
	res.send("get OK")
})

// 用戶信息 要注意 把router分發的話統一用app.use()
app.use("/my",userinfoRouter)

app.use("/my/article",articleCategory)

app.use("/my/article",articleRouter)

app.use((err,req,res,next)=>{
	// 驗證失敗導致的錯誤
	if(err.name ==="UnauthorizedError") return res.status(401).json({message:"身份認證失敗"})
	if(err instanceof joi.ValidationError) return res.status(400).json({message:err.message})
	res.status(404).json({message:"未知錯誤"})
	next()
})

const port = process.env.PORT || 8083;
app.listen(port,()=>{
	console.log("server is ok at 8083")
})

/**
 * @apiDefine ParamsError
 *
 * @apiError ParamsError 400返回各個錯誤傳值錯誤訊息
 *
 * @apiErrorExample Error-Response:
 *     HTTP/1.1 400 Not Found
 *     {
 *       "message": "返回各個錯誤傳值錯誤訊息"
 *     }
 */

/**
 * @apiDefine UnknownError
 *
 * @apiError UnknownError 404未知錯誤
 *
 * @apiErrorExample Error-Response:
 *     HTTP/1.1 404 Not Found
 *     {
 *       "message": "未知錯誤"
 *     }
 */

/**
 * @apiDefine UnauthorizedError
 *
 * @apiError UnauthorizedError 401身份認證失敗
 *
 * @apiErrorExample Error-Response:
 *     HTTP/1.1 401 Not Found
 *     {
 *       "message": "身份認證失敗"
 *     }
 */

//登入註冊功能
// /api開頭

/**
 * @api {post} /api/login login接口
 * @apiName login接口
 * @apiGroup User
 *
 * @apiParam {String} username  帳號
 * @apiParam {String} password   密碼
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

/**
 * @api {post} /api/register register接口
 * @apiName register接口
 * @apiGroup User
 * @apiParam {String} username  帳號
 * @apiParam {String} password   密碼
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 * @apiUse UnknownError
 * @apiUse ParamsError
 */

//修改個人資訊(登入後)

// 更改用戶資訊接口
// /my開頭

/**
 * @api {get} /my/userinfo 獲取userinfo接口
 * @apiName 獲取userinfo接口
 * @apiGroup Userinfo
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

/**
 * @api {post} /my/userinfo 更新userinfo接口
 * @apiName 更新userinfo接口
 * @apiGroup Userinfo
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiParam {String} nickname  暱稱
 * @apiParam {String} email  email
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

/**
 * @api {post} /my/updatePassword 更改updatePassword接口
 * @apiName 更改updatePassword接口
 * @apiGroup Userinfo
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 *
 * @apiParam {String} oldPassword   原密碼
 * @apiParam {String} newPassword  新密碼
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

/**
 * @api {post} /my/updatePic 更改updatePic接口
 * @apiName 更改updatePic接口
 * @apiGroup Userinfo
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 *
 * @apiParam {String} user_pic  格式需是base64處理過的字串，例如
data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADoAAAA6CAYAAADhu0ooAAAFP0lEQVR4nO2bX0gcRxzH
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

// /my/article接口
// 增刪修查文章接口

//獲取文章分類數據
/**
 * @api {get} /my/article/cates 獲取articleCategory接口
 * @apiName 獲取article接口
 * @apiGroup articleCategory
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 *
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

//根據id獲取文章分類數據
/**
 * @api {get} /my/article/cates/:id 根據特定id獲取那筆資料articleCategory接口
 * @apiName 根據id獲取article接口
 * @apiGroup articleCategory
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiParamExample {json} Request-Example:
 *     {
 *       my/article/cates/1
 *     }
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

//新增文章分類
/**
 * @api {post} /my/article/addCategory 新增文章分類articleCategory接口
 * @apiName 新增文章分類articleCategory接口
 * @apiGroup articleCategory
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiParam {String} name   文章名稱
 * @apiParam {String} alias   別稱
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

// 根據id刪除文章分類規則
/**
 * @api {get} /my/article/deleteCategory/:id 刪除文章分類articleCategory接口
 * @apiName 刪除文章分類articleCategory接口
 * @apiGroup articleCategory
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiParamExample {json} Request-Example:
 *     {
 *       /my/article/deleteCategory/1
 *     }
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

// 修改(更新)文章分類接口
/**
 * @api {post} /my/article/updateCategory 修改(更新)文章分類articleCategory接口
 * @apiName 修改更新文章分類articleCategory接口
 * @apiGroup articleCategory
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *     }
 * @apiParam {String} id   id
 * @apiParam {String} name   文章名稱
 * @apiParam {String} alias   別稱
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

//發布文章路由
/**
 * @api {post} /my/article/add 發布文章article接口
 * @apiName 發布文章article接口
 * @apiGroup article
 * @apiHeader {String} Authorization 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 * @apiHeaderExample {json} Header-Example:
 *     {
 *       "Authorization": 需攜帶登入後拿到的token(格式為"Bearer "+你的token)
 *        請求資料的格式需要是FormData格式因為要存檔案
 * 		  目前此接口只支援用postman測試 要在Body裡面用form-data裡面把cover_img的KEY那邊選File並上傳本地檔案到伺服器
 *     }
 * @apiParam {String} title   文章名稱
 * @apiParam {Number} cate_id   文章種類id
 * @apiParam {String} content   文章內容
 * @apiParam {Blob} cover_img   文章封面圖片(需要選擇本地檔案上傳)
 * @apiParam {String} state   文章狀態("已發布"or"草稿")
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *
 * @apiUse UnknownError
 * @apiUse ParamsError
 * @apiUse UnauthorizedError
 */

