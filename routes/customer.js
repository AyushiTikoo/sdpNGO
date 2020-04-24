var express = require('express');
var router = express.Router();
var db = require('../db');
var bcrypt = require('bcrypt');
const bodyParser = require('body-parser');


router.get('/', function(req, res, next) {
    var query = 'select * from customerinfo'

    db.query(query,function(err,rows,fields){
        if(err) throw err;
        // res.json(rows);
        res.render('customer', { title: 'User',customer : rows });
    });
  
});

router.get('/createCustomer-form',function(req,res,next){
    res.render('createCustomerform',{title:'Insert User'});
})

router.post('/create',function(req,res,next){
    console.log(req.body);
    let pwd=req.body.cPassword;
    console.log(pwd);
    req.body.cPassword=bcrypt.hashSync(pwd,10);
    var sql="insert into customerinfo values(null,'" + req.body.email +"','" + req.body.cName +"'," + req.body.cMobile +",'" +req.body.cPassword +"')"
    db.query( sql, function(err,result){
      if(err) throw err
      res.redirect('/customer');
    })
  });

router.get('/delete/:id',function(req,res,next){
    var id = req.params.id;
    var sql=`delete from customerinfo where id=${id}`;
    db.query( sql, function(err,result){
        if(err) throw err;
        res.redirect('/customer');
      })
});

module.exports = router;
