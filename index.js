const express = require('express');
const app = express();

const mysql = require('mysql');

const port = 3000;

const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'mydb'
})

connection.connect();

app.get('/', (req, res) => {
  res.send('<h1>Node rodando - Hot Reload Compose</h1>')
});

app.listen(port, () => console.log(`🔥 Server is running on port: ${port} || nodemon hot reload`));
