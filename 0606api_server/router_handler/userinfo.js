const db = require("../db/index.js")
// 導入bcryptjs@2.4.3 加密密碼
const bcrypt = require("bcryptjs")
// 獲取用戶基本信息
exports.getUserInfo = (req, res) => {
	// res.send("getUserInfo ok")
	// 定義查詢用戶sql語句
	// 注意密碼很重要 不要再傳給前端紀錄
	const sql = "select id, username, nickname, email, user_pic from ev_users where id=?"
	// 調用db.query執行SQL語句
	db.query(sql,req.user.id,(err,results)=>{
		if(err) return res.status(400).json(err)
		
		if(results.length !== 1) return res.status(400).json({message:"獲取用戶信息失敗"})
		
		res.status(200).json({
			message:"獲取用戶信息成功",
			// 前面排除了不唯一狀況 這邊拿術組第一個資料會是這筆id資料
			data:results[0]
		})
	})
}


exports.updateUserInfo = (req,res) =>{
	// 根據id查詢用戶 並且更改 nickname email (id不可讓用戶改)
	// 定義查詢用戶sql語句
	const sql = "update ev_users set ? where id=?"
	db.query(sql,[req.body,req.user.id],(err,results)=>{
		if(err) return res.status(400).json(err)
		// 如果影響行數不等於1,證明更新失敗
		if(results.affectedRows !== 1) return res.status(400).json({message:"更新用戶訊息失敗"})
		res.status(200).json({message:"更新用戶成功"})
	})	
}

// 重置密碼路由 舊密碼和新密碼不能一樣 且都須符合規則
exports.updatePassword = (req,res) => {
	// res.send("updatePasswod ok")
	// 根據id查詢用戶是否存在
	const sql = "select * from ev_users where id=?"
	// 執行SQL語句 根據id查詢用戶的信息的SQL語句
	db.query(sql,[req.user.id],(err,results)=>{
		if(err) return res.status(400).json(err)
		if(results.length !== 1) return res.status(400).json({message:"用戶不存在"})
	// 判斷密碼(前端要傳oldPassword)是否和資料庫加密過的密碼一致
		// if
	const comparePassword =	bcrypt.compareSync(req.body.oldPassword,results[0].password)
	if(!comparePassword) return res.status(400).json({message:"（舊）密碼錯誤"})
	
	// 新密碼寫到資料庫：沒跑上面錯誤處理的話開始把新密碼寫到資料庫
	const sql = "update ev_users set password =? where id=?"
	// 新密碼加密後寫入資料庫:
	// 用戶傳過來新密碼的加密
	const newPassword = bcrypt.hashSync(req.body.newPassword,10)
	// db.query把加密後新密碼寫到資料庫
	db.query(sql,[newPassword,req.user.id],(err,results)=>{
		if(err) return res.status(400).json(err)
		if(results.affectedRows !== 1) return res.status(400).json({message:"更新新密碼失敗"})
		res.status(200).json({message:"更新成功"})
		})
	})
}

exports.updatePic = (req,res)=>{
	// res.send("update pic ok")
	const sql = "update ev_users set user_pic =? where id=?"
	db.query(sql,[req.body.user_pic,req.user.id],(err,results)=>{
		if(err) return res.status(400).json(err)
		if(results.affectedRows !== 1) return res.status(400).json({message:"更新頭貼失敗"})
		res.status(200).json({message:"更新頭像成功"})
	})
}