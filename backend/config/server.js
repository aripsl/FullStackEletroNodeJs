var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');

var api = express();
api.set('view engine', 'ejs');
api.set('views', '././views');

api.use(bodyParser.urlencoded({ extended: true }));

consign()

    .include('././routes')
    .then('././config/database.js')
    .include('././models')
    .into(api);

module.exports = api;