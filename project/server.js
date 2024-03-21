const express = require('express');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const port = 8000;

const db = new sqlite3.Database('chinook.db', sqlite3.OPEN_READWRITE, (err) => {
	if (err) {
		console.error(err.message);
	}
	console.log('Connected to the chinook database.');
});

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

app.get('/api/v1/album', (req, res) => {
	const albumId = req.query.albumId;
	const artistId = req.query.artistId;
	const albumName = req.query.albumName;
	const artistName = req.query.artistName;

	let sql = 'SELECT '
	sql += 'al.Title AS \'Album Name\', ';
	sql += 'al.albumId AS \'Album ID\', ';
	sql += 'ar.Name AS \'Artist Name\', ' ;
	sql += 'ar.ArtistId AS \'Artist ID\' ';
	sql += 'FROM albums AS al ' ;
	sql += 'JOIN artists AS ar ON al.ArtistId = ar.ArtistId';

	const params = [];

	if (artistId || artistName || albumId || albumName) {
		sql += ' WHERE';
	}
	if (artistId) {
		sql += ' al.artistId = ?';
		params.push(artistId);
	}
	if (artistName) {
		if (params.length > 0) {
			sql += ' AND'
		}
		sql += ' UPPER(ar.Name) = UPPER(?)';
		params.push(artistName);
	}
	if (albumName) {
		if (params.length > 0) {
			sql += ' AND'
		}
		sql += ' UPPER(al.Title) = UPPER(?)';
		params.push(albumName);
	}
	if (albumId) {
		if (params.length > 0) {
			sql += ' AND'
		}
		sql += ' al.albumId = ?';
		params.push(albumId);
	}
	db.all(sql, params, (err, rows) => {
		if (err) {
			res.status(500).json({ error: err.message });
			return;
		}
		if (rows.length === 0) {
		res.status(404).json({ message: 'Album not found' });
		}
		res.json(rows);
	});
	
});

app.use((req, res, next) => {
	res.status(404).json({ message: 'Not found' });
});

app.listen(port, () => {
	console.log(`Server is running on http://localhost:${port}`);
});
