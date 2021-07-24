const express = require("express")
const loginApp = express()
const User = require("../model/user.js")

loginApp.get("/",(req,res)=>{
	res.render("login",{
		msg:""
	})
})

loginApp.post("/",(req,res)=>{
	let {username,password} = req.body
	User.login(username,password).then(result=>{
		if(result){
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