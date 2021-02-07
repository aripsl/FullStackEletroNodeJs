module.exports = function () {

    this.getProdutos = function (connection, callback) {
        connection.query("SELECT * FROM produtos", callback);
    }
    this.getPedidos = function (connection, callback) {
        connection.query("SELECT * FROM pedidos JOIN produtos ON pedidos.id= produtos.id", callback);
    }
    this.salvarPedidos = function (pedido, connection) {
        connection.query("INSERT INTO pedidos set?", pedidos);
    }
    this.getComentarios = function (connection, callback) {
            connection.query("SELECT * FROM comentarios", callback);
    }
    this.salvarComentarios = function (comentarios, connection) {
        connection.query("INSERT INTO comentarios set?", comentarios);
    }

    return this;
}