var express = require('express');
var router = express.Router();
var connection = require('../db');
router.get('/', function(req, res, next) {
    res.render('feedbackC', { title: 'Feedback' });
  });

router.post('/submit',function(req,res){
    console.log(req.body);
      var sql="insert into feedback values(null,'" + req.body.email +"','" + req.body.category +"','" + req.body.comments +"')"
      connection.query( sql, function(err){
        if(err) throw err
        res.render('thanksFeedback')
      })
      connection.end();
  });

  module.exports = router;