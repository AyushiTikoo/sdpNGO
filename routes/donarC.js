var express = require('express');
var router = express.Router();
var bcrypt = require('bcrypt');
var connection = require('../db');
router.get('/', function(req, res, next) {
    res.render('donarC', { title: 'Donar' });
  });

  router.post('/submit', function (req, res) {
    console.log(req.body);
    var sql="insert into donar values(null,'" + req.body.cName +"','" + req.body.cEmail +"'," + req.body.cMobile + ",'" + req.body.cAddress +"','" + req.body.cCity +"','" + req.body.cState +"'," + req.body.cZip +",'" + req.body.donationType +"'," + req.body.cAmount+")"
    connection.query( sql, function(err){
      if(err) throw err
      res.render('thanks')
    })
    connection.end();
  });


  module.exports = router;