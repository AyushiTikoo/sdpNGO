var express = require('express');
var router = express.Router();
var db = require('../db');
var bcrypt = require('bcrypt');
const bodyParser = require('body-parser');


router.get('/', function(req, res, next) {
    var query = 'select * from donar'

    db.query(query,function(err,rows,fields){
        if(err) throw err;
        // res.json(rows);
        res.render('donar', { title: 'Donar',donar : rows });
    });
  
});
module.exports = router;
