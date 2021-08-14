//日誌中間件
const Log = require("../model/log.js")
module.exports = {
	//總訪問量
	getPage:(req,res,next)=>{
		//取req.page裡面值
		// let {page} = req
		// let {p,size} = req.page
		let {p,size} = req.page
		Log.getPage((p-1)*size,size).then(results=>{
			//撈的結果放在page對象裡的list
			req.page.list = results
			next()
		}).catch(err=>{
			next(err)
		})
	},
	
	//獲取總條目數
	getCount:(req,res,next)=>{
		Log.getCount().then(results=>{
			req.count = results
			next()
		}).catch(err=>{
			next(err)
		})
	},
}