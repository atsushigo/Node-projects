const joi = require('joi')

const id = joi.number().integer().min(1).required()
const name = joi.string().required()
const alias = joi.string().alphanum().required()

// 新增文章分類路由規則
exports.addCategoryRules = {
	body:{
		name,
		alias,
	}
}

// 根據id刪除文章分類規則
exports.articleCategoryRules = {
	// 因為是從url解析id 所以用params定義
	params:{
		id,
	}
}

exports.getArticleCategorysByidRules = {
	params:{
		id,
	}
}

// 修改(更新)文章分類接口
exports.updateArticleRules = {
	body:{
		id,
		name,
		alias,
	}
}