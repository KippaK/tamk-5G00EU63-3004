// Step 1: Set up Node.js project and install necessary packages
const express = require('express');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const port = 8000;

// Step 2: Create SQLite database connection
const db = new sqlite3.Database('path/to/your/database/chinook.db', sqlite3.OPEN_READWRITE, (err) => {
  if (err) {
    console.error(err.message);
  }
  console.log('Connected to the chinook database.');
});

// Step 3: Implement CRUD operations
// Read all users
app.get('/api/v1/user', (req, res) => {
  // Implement logic to fetch all users from the database
  db.all('SELECT * FROM users', (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(rows);
  });
});

// Read single user by ID
app.get('/api/v1/user/:id', (req, res) => {
  const id = req.params.id;
  // Implement logic to fetch a user by ID from the database
  db.get(`SELECT * FROM users WHERE id = ?`, [id], (err, row) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    if (!row) {
      res.status(404).json({ message: 'User not found' });
      return;
    }
    res.json(row);
  });
});

// Step 4: Handle errors
app.use((req, res, next) => {
  res.status(404).json({ message: 'Not found' });
});

// Step 5: Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

