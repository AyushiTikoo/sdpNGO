var express = require('express');
var router = express.Router();
var db = require('../db');
var bcrypt = require('bcrypt');
const bodyParser = require('body-parser');


router.get('/', function(req, res, next) {
    var query = 'select * from volunteer'

    db.query(query,function(err,rows,fields){
        if(err) throw err;
        // res.json(rows);
        res.render('volunteer', { title: 'Volunteer',donar : rows });
    });
  
});
router.get('/delete/:id',function(req,res,next){
    var id = req.params.id;
    var sql=`delete from volunteer where id=${id}`;
    db.query( sql, function(err,result){
        if(err) throw err;
        res.redirect('/volunteer');
      })
});
module.exports = router;
