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
	}
}