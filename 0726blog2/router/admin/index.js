//後台首頁
const express = require("express")
const indexApp = express()

indexApp.get('/',(req,res)=>{
	let {user} = req
	res.render("admin/index",{
		user:user
	})
})

module.exports = indexApp