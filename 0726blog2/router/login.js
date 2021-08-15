const express = require("express")
const loginApp = express()
const User = require("../model/user.js")
const Log = require("../middleware/log.js")

loginApp.get("/",(req,res)=>{
	res.render("login",{
		msg:""
	})
})

//實現登入操作
loginApp.post("/",(req,res,next)=>{
	let {username,password} = req.body
	User.login(username,password).then(result=>{
		if(result){
			//session存取
			//console.log(result)   { id: 1, username: 'admin' }
			
			//登入成功後封裝日誌 寫入log
			req.log = {
				//id:,  id會自增
				handle:"登入",
				time:new Date(),
				ip:req.ip,
			}
			console.log(req.log)
			//丟到下一個中間件運算
			Log.add(req,res,next)
			//session存儲
			req.session.user = result
			res.redirect("/")
		}else{
			res.render("login",{
				msg:"登入失敗"
			})
		}
	}).catch(err=>{
		console.log(err)
	})
})

module.exports = loginApp