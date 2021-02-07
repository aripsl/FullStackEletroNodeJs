 var api = require('./config/server');

var rotaProdutos = require('./routes/produtos')(api);
var rotaComentarios = require('./routes/comentarios')(api);

api.listen(5000, function () {
    console.log("Servidor Ativo com Sucesso!");
});