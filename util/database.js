const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'exp2',
    password: '',
});

module.exports = pool.promise();
