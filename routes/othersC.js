var express = require('express');
var router = express.Router();
var connection = require('../db');
router.get('/', function(req, res, next) {
    res.render('othersC', { title: 'Donar' });
  });

  router.post('/submit', function (req, res) {
    console.log(req.body);
    var sql="insert into pickupinfo values(null,'" + req.body.email +"','" + req.body.sName +"'," + req.body.sMobile +",'" + req.body.sAddress +"','" + req.body.sCity +"','" + req.body.sState +"','" + req.body.sDate +"','" + req.body.donationtype+"')"
    connection.query( sql, function(err){
      if(err) throw err
      res.render('thanksOthers')
    })
    connection.end();
  });


  module.exports = router;