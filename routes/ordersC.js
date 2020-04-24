var express = require('express');
var router = express.Router();
var db = require('../db');
router.get('/', function(req, res, next) {
    var query = 'select * from event'

    db.query(query,function(err,rows,fields){
        if(err) throw err;
        // res.json(rows);
        res.render('ordersC', { title: 'Events',orders : rows });
    });
  
});

// router.get('/eventRegister',function(req,res,next){
//     res.render('eventRegister',{title:'Create Order'});
// })

router.get('/eventRegister/:id',function(req,res,next){
    var id = req.params.id;
    var sql=`select eName from event where id = ${id}`;
    
    db.query(sql,function(err,rows,fields){
        if(err) throw err
        res.render('eventRegister',{title:'Update Events',orders:rows[0]});
    })
})


router.post('/create',function(req,res,next){
    var sql="insert into volunteer values(null,'" + req.body.name +"'," + req.body.mobile +",'" + req.body.email +"','" + req.body.eName +"')"
            db.query( sql, function(err,result){
            if(err) throw err
            res.redirect('/thanksEventRegister');
    })
})
module.exports = router;