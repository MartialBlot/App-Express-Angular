const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password :  'martialpassword', 
    database: 'appPlaylist'
});

module.exports = db;