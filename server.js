require('dotenv').config();
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const db = require('./database'); // Import the database connection

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.post('/api/referrals', (req, res) => {
  const { name, email, phone,  course } = req.body;

  if (!name || !email || !phone || !course) {
    return res.status(400).json({ error: 'All fields are required.' });
  }

  const query = 'INSERT INTO `db_user`( `Name`, `Email`, `phone`, `course`) VALUES (?, ?, ?, ?)';
  const values = [name, email,  phone, course];

  db.query(query, values, (error, results) => {
    if (error) {
      console.error('Error saving the referral:', error.stack);
      return res.status(500).json({ error: 'An error occurred while saving the referral.' });
    }
    res.status(201).json({status:true, id: results.insertId, ...req.body });
  });
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
