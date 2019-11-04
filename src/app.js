var express = require('express');
var connection = require('./connection');
var exphbs  = require('express-handlebars');
var path = require('path');

var app = express();

app.use(express.urlencoded({ extended: false }));
app.set('views', path.join(__dirname, 'views'));
app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

app.get('/', function(req, res) {
  res.render('home', { 
    mensaje: '¡Hola ET 35!', 
    texto: 'Esto también sale del servidor',
    fecha: new Date()
  });
});

app.get('/query', function(req, res) {
  connection.query('SELECT * FROM test.estudiantes', 
  function (error, results, fields) {
    if (error) throw error;
    res.json(results);
  });
});

app.post('/', function(req, res){
  const query = req.body.consulta;
  connection.query(query, function(error, results, fields){
    res.render('home',{
      resultados: JSON.stringify(results),
      columnas: JSON.stringify(fields),
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
