//後台首頁
const express = require("express")
const indexApp = express()
//上次登入時間顯示。導入user中間件封裝的最後一次登入時間方法
const user = require("../../middleware/user.js")

indexApp.get('/',user.lastLoginTime,(req,res)=>{
	let {user,lastLoginTime} = req
	res.render("admin/index",{
		user:user,
		lastLoginTime:lastLoginTime
	})
})

module.exports = indexApp