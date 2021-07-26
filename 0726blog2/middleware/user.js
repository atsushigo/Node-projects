//用戶中間件
const User = require("../model/user.js")
module.exports = {
	//最後一次登入時間
	lastLoginTime:(req,res,next)=>{
		User.lastLoginTime().then(results=>{
			req.lastLoginTime = results
			next()
		}).catch(err=>{
			next(err)
		})
	}
}