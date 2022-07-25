const express = require('express');
const router = express.Router();
const mysql = require('mysql');

function dbConnect() {
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'express_quizz'
    });
    connection.connect();
    return connection;
  }

  router.get('/', (req, res) => {
    // console.log("hey")
    // Je me connecte à la BDD et je récupère les quizz
    const connection = dbConnect();
    const sql = "SELECT * FROM questions";
    connection.query(sql, function(err, questions) {
      if (err) throw err;
      res.json(questions)
    });
    connection.end();
  }); 

module.exports = router;
