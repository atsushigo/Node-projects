const mysql = require("mysql")

//數據模型繼承的基類 封裝數據庫操作
// class Model{

// }

module.exports = class Model {
	//連接數據對象
	//static conn = null
	//數據連接方法
	static connection() {
		//創建對象
		Model.conn = mysql.createConnection({
			host: "127.0.0.1",
			user: "root",
			password: "rootroot",
			database: "blog"
		})
		Model.conn.connect(err => {
			if (err) {
				console.log("數據庫連接失敗" + err)
			}
		})
	}
	static end() {
		if (Model.conn != null)
			Model.conn.end()
	}

	static query(sql, params = []) {
		return new Promise((resolve, reject) => {
			this.connection()

			Model.conn.query(sql, params, (err, results) => {
				if (err) {
					reject(err)
				} else {
					resolve(results)
				}
			})
			this.end()
		})
	}
	
}
