//用戶中間件
const PV = require("../model/pv.js")
module.exports = {
	//總訪問量
	getTotal:(req,res,next)=>{
		PV.getTotal().then(results=>{
			req.visit = results
			next()
		}).catch(err=>{
			next(err)
		})
	},
	
	//獲取全部訪問量做成趨勢圖表
	
	getVisitTrend:(req,res,next)=>{
		PV.getVisitTrend().then(results=>{
			req.visitTrend = JSON.stringify(results)
			next()
		}).catch(err=>{
			next(err)
		})
	}
}