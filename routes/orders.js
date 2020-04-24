var express = require('express');
var router = express.Router();
var db = require('../db');
router.get('/', function(req, res, next) {
    var query = 'select * from event'

    db.query(query,function(err,rows,fields){
        if(err) throw err;
        // res.json(rows);
        res.render('orders', { title: 'Events',orders : rows });
    });
  
});

router.get('/createOrder-form',function(req,res,next){
    res.render('createOrderform',{title:'Create Events'});
})

router.post('/create',function(req,res,next){
    // console.log(req.body);
    var sql="insert into event values(null,'" + req.body.eName +"','" + req.body.eLocation +"','" + req.body.eTime +"','" + req.body.eDate +"','" + req.body.eDescription +"')"
    db.query( sql, function(err,result){
      if(err) throw err
      res.redirect('/orders');
    })
    // db.end();
})

router.get('/editOrder-form/:id',function(req,res,next){
    var id = req.params.id;
    var sql=`select * from event where id = ${id}`;
    
    db.query(sql,function(err,rows,fields){
        if(err) throw err
        res.render('editOrderform',{title:'Update Events',orders:rows[0]});
    })
})
router.post('/edit/:id',function(req,res,next){
    var id=req.params.id;
    var eName= req.body.eName;
    var eLocation= req.body.eLocation;
    var eTime = req.body.eTime;
    var eDate = req.body.eDate;
    var eDescription = req.body.eDescription;
    var sql=`update event set eName= "${eName}" ,eLocation = "${eLocation}", eTime = "${eTime}", eDate = "${eDate}", eDescription = "${eDescription}" where id = "${id}"`
    
    db.query( sql, function(err,result){
      if(err) throw err;
      res.redirect('/orders');
    })
    // db.end();
})

router.get('/delete/:id',function(req,res,next){
    var id = req.params.id;
    var sql=`delete from event where id=${id}`;
    db.query( sql, function(err,result){
        if(err) throw err;
        res.redirect('/orders');
      })
});

module.exports = router;
