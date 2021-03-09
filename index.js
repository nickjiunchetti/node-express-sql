const express = require('express')
const mysql = require('mysql')

const app = express()

const deb = mysql.createConnection({
	host: 'localhost',
	user: 'nickj',
	password: '1726',
	database: 'acme'
})

deb.connect()

app.get('./users', (req, res) => {
	const sql = 'select first name, last name, email from users orders by first_name'

	db.query(sql, (err, result) => {
		if (err) throw err

		res.send(result)
	})
})

app.listen(5000, () => console.log('server started'))