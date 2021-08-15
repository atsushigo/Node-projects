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
	
	//添加日誌
	// add:(req,res,next)=>{
	// 	let log ={
	// 		id:,
	// 		handle:,
	// 		time:,
	// 		ip:,
	// 	}
	// 	Log.add(log).then(results=>{
	// 		req.count = results
	// 		next()
	// 	}).catch(err=>{
	// 		next(err)
	// 	})
	// },
	
	//添加日誌
	//這邊封裝跟前面req.body不一樣 邏輯是要在用戶登入login這些相應操作後直接寫入log表
	add:(req,res,next)=>{
		Log.add(req.log).then(results=>{
			req.count = results
			next()
		}).catch(err=>{
			next(err)
		})
	},
	
}