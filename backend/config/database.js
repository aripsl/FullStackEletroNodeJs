var mysql = require('mysql');

var connMySQL = function () {
    console.log("Conectado com Sucesso!");
    return connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'fullstack'
    });
}

module.exports = function () {
    return connMySQL;
}