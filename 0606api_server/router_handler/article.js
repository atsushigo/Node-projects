const path = require("path")
const db = require("../db/index.js")

exports.addArticle = (req,res) => {
	/* console.log(req.body)
	console.log("-------------------")
	console.log(req.file)
	res.send("addArticle ok") */
	//console.log(req.file)
	//過濾資料
	if(!req.file || req.file.fieldname !== "cover_img") return res.status(400).json({message:"文章封面是必選"})
	// 寫進資料庫前處理對象
	const articleInfo ={
		// 標題、內容、發布狀態、所屬分類id
		...req.body,
		//文章封面存放路徑
		cover_img:path.join("/uploads",req.file.filename),
		//文章發佈時間
		pub_date:new Date(),
		//文章作者id
		author_id:req.user.id,
		//是否被刪除
		is_delete:0,
	}
	
	const sql = "insert into ev_articles set ?"
	db.query(sql,articleInfo,(err,results)=>{
		if(err) return res.status(400).json(err)
		if(results.affectedRows !== 1) return res.status(400).json({message:"發佈新文章失敗"})
		res.status(200).json({message:"發送文章成功"})
	})
	//console.log(articleInfo)
	//res.send("addArticle ok") 
}