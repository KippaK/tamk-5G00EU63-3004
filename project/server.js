// FILE: server.js
//
// Call example:
//
// node server.js

let sqlite3 = require("sqlite3").verbose();
let db = new sqlite3.Database("example.db");
let md5 = require("md5");

require('dotenv').config()
const PORT_NUMBER = process.env.PORT;

const SQL_TABLE_NAME = "test";
const SQL_TABLE_CREATE = "CREATE TABLE IF NOT EXISTS ${SQL_TABLE_NAME} (id INTEGER UNIQUE NOT NULL PRIMARY KEY, info VARCHAR(1000))";
const SQL_TABLE_PREPARE = "INSERT INTO ${SQL_TABLE_NAME} (id, info) VALUES (NULL, ?)"

db.serialize( () => {

	db.run(SQL_TABLE_CREATE);

	let stmt = db.prepare(SQL_TABLE_PREPARE);

	for (var i = 0; i < 10; i++) {
		stmt.run("password " + md5(i));
	}

	stmt.finalize();

	db.each("SELECT id, info FROM " + SQL_TABLE_NAME, (err, row) => {
		if (err)
			consol.log(err)
		else
			console.log(row.id + ": " + row.info);
	});

	// Print the rows as JSON

	db.all("SELECT id, info FROM " + SQL_TABLE_NAME, (err, rows) => {
		console.log("--- JSON ---\n");
		console.log(JSON.stringify(rows));
	});
});

db.close();

END OF FILE
