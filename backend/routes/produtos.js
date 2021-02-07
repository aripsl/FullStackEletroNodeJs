module.exports = function (api) {

    api.get('/produtos', function (req, res) {

        var connection = api.config.database();

        var query = api.models.conteudoModel;
        query.getProdutos(connection,
            function (error, results, fields) {
                console.log(error, results);
                res.render('produtos', { dados: results });
            });
    });
}