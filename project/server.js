// Step 1: Set up Node.js project and install necessary packages
const express = require('express');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const port = 8000;

// Step 2: Create SQLite database connection
const db = new sqlite3.Database('chinook.db', sqlite3.OPEN_READWRITE, (err) => {
	if (err) {
		console.error(err.message);
	}
  console.log('Connected to the chinook database.');
});

// Fetch all artists or a single artist by ID passed as query parameter
app.get('/api/v1/artist', (req, res) => {
	const id = req.query.id;

	if (id) {
		db.get(`select * from artists where artistid = ?`, [id], (err, row) => {
			if (err) {
				res.status(500).json({ error: err.message });
				return;
			}
			if (!row) {
				res.status(404).json({ message: 'Artist not found' });
				return;
			}
			res.json(row);
		});
	} else {
		db.all('select * from artists', (err, rows) => {
			if (err) {
				res.status(500).json({ error: err.message });
				return;
			}
			res.json(rows);
		});
	}
});

// Step 4: Handle errors
app.use((req, res, next) => {
  res.status(404).json({ message: 'Not found' });
});

// Step 5: Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

