// 導入數據庫模塊
const db = require("../db/index.js")
// 導入bcryptjs@2.4.3 加密密碼
const bcrypt = require("bcryptjs")
// 導入生成jwt包 用戶成功login後返回非敏感訊息
// 把jwt需要的secretkey放到全局 寫成一個文件引用
const jwt = require("jsonwebtoken")
// 導入自訂密鑰
const jwtconfig = require("../config/jwtconfig.js")
exports.regUser = (req,res) =>{
	// 獲取客戶端提交的用戶信息
	const userinfo = req.body
	// https://www.npmjs.com/package/@escook/express-joi
	// 把驗證這部分抽到局部中間件router去做 避免寫太多if else難維護
	// if(!userinfo.username || !userinfo.password){
	// 	return res.send({
	// 		status:1,
	// 		message:"請輸入用戶名和密碼"
	// 	})
	// }
	// 查詢資料表是否已有此用戶
	const sql = "select * from ev_users where username=?"
	db.query(sql,userinfo.username,(err,result)=>{
		
		if(err) return res.status(400).json({
			message:err.message
		})
		
		if(result.length > 0)
		return res.status(400).json({
			message:"用戶名已存在"
		})
		// 為密碼進行加密 調用bcrypt.hashSync()
		// 把密碼加密成10位數後重新丟回去userinfo.password變數
		// res.send("register OK")
		// console.log(userinfo)　123
		userinfo.password = bcrypt.hashSync(userinfo.password,10)
		// console.log(userinfo)　$2a$10$H2Ap6jk1ox1ZFG.2EHOH4ugl4wLCZg0d/0g8r2N/ZW3/7B1qbkIc2
		// 定義插入新用戶的SQL語句
		const sql = "insert into ev_users set ?"
		db.query(sql,{username:userinfo.username,password:userinfo.password},(err,results)=>{
			// 判斷語句是否執行成功 失敗的話return出去
			// 插入一位用戶要判斷是否只影響一行資料 若不是的話代表失敗
			if(err) return res.status(400).json({
				message:err.message
			})
			if(results.affectedRows !== 1) return res.status(400).json({
				message:"註冊用戶失敗請稍後再試"
			})
			// 註冊成功狀況
			res.status(200).json({
				message:"註冊成功"
			})
		})
	})
}

exports.login = (req,res)=>{
	const userinfo = req.body
	const sql = "select * from ev_users where username=?"
	db.query(sql,userinfo.username,(err,results)=>{
		if(err) return res.send(err)
		// 如果找不到username或不只一筆 回覆帳號錯誤
		if(results.length !== 1) return res.status(401).json({message:"帳號錯誤"})
		// 判斷密碼是否正確 比較前端傳回來的密碼和資料庫是否一樣
		// 如果都加密了要確認資料庫密碼都是加密的 bcrypt沒加密的那筆密碼會找不到
		const comparePassword = bcrypt.compareSync(userinfo.password,results[0].password)
		if(!comparePassword) return res.status(401).json({message:"密碼錯誤"})
		// 登入成功後處理  回傳token給前端(包含敏感資料先清空避免前台明碼存到密碼等等)
		 const user = {...results[0],password:"",user_pic:""}
		 // 對用戶信息加密生成token
		 const thisIsToken = jwt.sign(user,jwtconfig.jwtSecretKey,{expiresIn:"10h"})
		 // 把處理好的token傳回客戶端
		 res.status(200).json({
		 	message:"登入成功",
		 	token:"Bearer "+thisIsToken
		 })
	})
}