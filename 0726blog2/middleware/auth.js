//權限子應用 登入後
module.exports = {
	//從session中讀取用戶
	getUser:(req,res,next)=>{
		req.user = req.session.user
		next()
	},
	//中間件判斷用戶是否登入，訪問後台權限
	allowToAdmin:(req,res,next)=>{
		let user = req.session.user
		if(user){
			req.user = user
			next()
		}else{
			res.redirect("/login")
		}
	}
}