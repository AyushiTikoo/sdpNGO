var express = require('express');
var router = express.Router();
router.post('/create',function(req,res,next){
  console.log(req.body);
  var email = req.body.email;
  var password= req.body.password;
  if( email == "ayushi@gmail.com" && password == "ayushi")
  {
    res.render('index1', { title: 'Express' });
  }
  else{
    res.send("email or passowrd incorrect");
  }
  });
module.exports = router;
