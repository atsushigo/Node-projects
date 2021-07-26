//權限子應用 登入後
module.exports = {
	//從session中讀取用戶
	getUser:(req,res,next)=>{
		req.user = req.session.user
		next()
	}
}