const db = require("../db/index.js")
exports.getArticleCategorys = (req, res) => {
	// 根據分類狀態,獲取所有未被刪除的分類列表數據
	// is_delete為0表示沒有被標記為刪除的數據
	const sql = "select * from ev_article_cate where is_delete=0 order by id asc"
	db.query(sql, (err, results) => {
		if (err) return res.status(400).json(err)
		res.status(200).json({
			message: "獲取文章列表種類成功",
			data: results,
		})
	})
}

//根據id獲取文章分類數據
exports.getArticleCategorysByid = (req, res) => {
	//res.send("OK")
	const sql = "select * from ev_article_cate where id=?"
	db.query(sql, req.params.id, (err, results) => {
		if (err) return res.status(400).json(err)
		if (results.length !== 1) return res.status(400).json("獲取文章分類失敗")
		res.status(200).json({
			message: "獲取文章分類數據成功",
			data: results[0]
		})
	})
}

// 新增文章分類接口
exports.addArticleCategorys = (req, res) => {
	//res.send("add ok")
	//實現新增文章分類進資料庫
	const sql = "insert into ev_article_cate set ?"
	db.query(sql, req.body, (err, results) => {
		if (err) return res.status(400).json({message:err})
		if (results.affectedRows !== 1) return res.status(400).json({message:"新增文章分類失敗"})
		res.status(200).json({message:"新增文章分類成功"})
	})
}

// 根據params 傳id刪除文章分類接口
exports.deleteArticleCategorys = (req, res) => {
	// res.send("delete ok")
	const sql = "update ev_article_cate set is_delete=1 where id=?"
	db.query(sql, [req.params.id], (err, results) => {
		if (err) return res.status(400).json({message:err})
		if (results.affectedRows !== 1) return res.status(400).json({message:"刪除文章分類成功"})
		res.status(200).json({message:"刪除文章分類成功"})
	})
}

// 修改(更新)文章分類接口 只能更新已有id已存在的資料
exports.updateCategorys = (req, res) => {
	// res.send("UPDATE OK")
	// 查詢分類名稱和別名是否已被佔用(意即檢查重複)
	//找尋id不符合req.body.id的資料(排除自己這筆),但name或alias有對應到req.body.name/alias的資料
	//需要是
	const sql = "select * from ev_article_cate where Id<>? and (name=? or alias=?)"
	db.query(sql, [req.body.id, req.body.name, req.body.alias], (err, results) => {
		if (err) return res.status(400).json(err)
		// 判斷名稱和別名被佔用的四種情況
		if (results.length > 1) return res.status(400).json({message:"分類名稱和別名被佔用，請更換後重試"})
		if (results.length === 1 && results[0].name === req.body.name && results[0].alias === req.body
			.alias) return res.status(400).json({message:"分類名稱和別名被佔用，請更換後重試"})
		if (results.length === 1 && results[0].name === req.body.name) return res.status(400).json({message:"分類名稱被佔用，請更換後重試"})
		if (results.length === 1 && results[0].alias === req.body.alias) return res.status(400).json({message:"別名被佔用，請更換後重試"})

		//res.send("updatecate ok")
		// 不然的話表示這筆資料可以被寫進資料庫
		// 更新文章分類
		const sql = "update ev_article_cate set ? where id=?"
		db.query(sql, [req.body, req.body.id], (err, results) => {
			if(err) return res.status(400).json(err)
			if(results.affectedRows !== 1) return res.status(400).json({message:"更新文章分類失敗，請重試"})
			//更新文章分類成功
			res.status(200).json({message:"更新文章分類成功"})
		})
	})
}
