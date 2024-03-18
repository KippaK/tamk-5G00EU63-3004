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
    const name = req.query.name;
    let sql = 'SELECT * FROM artists';

    const params = [];

    if (id && name) {
        sql += ' WHERE UPPER(Name) = UPPER(?) AND ArtistId = ?';
        params.push(name, id);
    } else if (name) {
        sql += ' WHERE UPPER(Name) = UPPER(?)';
        params.push(name);
    } else if (id) {
        sql += ' WHERE ArtistId = ?';
        params.push(id);
    }

    db.all(sql, params, (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        if (rows.length === 0) {
            res.status(404).json({ message: 'Artist not found' });
            return;
        }
        res.json(rows);
    });
});

app.get('/api/v1/artist/album', (req, res) => {
	const id = req.query.id;
	let sql = 'SELECT * FROM albums';

	if (!id) {
		res.status(400).json({ message: 'id required' });
		return;
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

