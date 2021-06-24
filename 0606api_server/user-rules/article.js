const joi = require('joi')

const title = joi.string().required()
const cate_id = joi.number().integer().min(1).required()
const content = joi.string().required().allow('')
const state = joi.string().valid("已發布","草稿").required()

// 發布文章接口驗證規則
exports.articleRules = {
	body:{
		title,
		cate_id,
		content,
		state,
	}
}
