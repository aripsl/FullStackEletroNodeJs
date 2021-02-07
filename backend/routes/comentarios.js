module.exports = function (api) {

    api.get('/comentarios', function (req, res) {

        var connection = api.config.database();

        var query = api.models.conteudoModel;
        query.getComentarios(connection,
            function (error, results, fields) {
                console.log(error, results);
                res.render('comentarios', { dados: results });
            });
    });
}