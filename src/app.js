var express = require('express');
var connection = require('./connection');
var path = require('path');

var app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.static('public'));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.get('/', function(req, res) {
  res.render('index');
});

app.post('/', function(req, res){
  const query = req.body.query;
  connection.query(query, function(error, results, fields){
    res.render('index',{
      results: results,
      fields: fields,
      error: error,
      query: query
    });
  });
});

app.listen(3000, function() {
  connection.connect();
  console.log('Entrá a http://localhost:3000 desde tu navegador para ver qué devuelve esto');
});

process.on('SIGINT', function() {
  console.log('Cerrando la conexión con la base de datos')
  connection.end();
  process.exit(1);
});
