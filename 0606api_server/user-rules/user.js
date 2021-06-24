const joi = require('joi')

const username = joi.string().alphanum().min(1).max(10).required()
// 要特別注意regex正則表達式有沒有寫對
// user_pic的規則 .dataUri是不是base64字符串
const password = joi.string().pattern(/^[\S]{6,12}$/).required()
const id = joi.number().integer().min(1).required()
const nickname = joi.string().required()
const email = joi.string().email().required()
const user_pic = joi.string().dataUri().required()

// 定義驗證註冊和登錄表單數據規則
exports.userRules = {
	body:{
	username,
	password,
	},	
}
// 更新時用戶資訊時只有這些是協帶的資料 要校驗
exports.updateUserRules = {
	body:{
		//id,
		nickname,
		email,
	}
}
// 重置密碼接口需要驗證的規則 接口需要拿：舊密碼和新密碼
exports.updatePasswordRules = {
	body:{
		// id,
		// password,分成新和舊 由前端發過來兩個
		oldPassword:password,
		// 裡面的joi.ref("oldPassword")表示 值必須與oldPassword一樣
		// .concat(password)表示前面的規則再加上符合password規則
		newPassword:joi.not(joi.ref("oldPassword")).concat(password),
	}
}

exports.updatePicRules = {
	body:{
		user_pic,
	}
}