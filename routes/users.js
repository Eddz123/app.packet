const express = require('express');
const router = express.Router();
const con = require('./connection');


/* GET users listing. */
router.get('/login', function(req, res, next) {
  res.render('login');
});

/* GET users listing. */
router.get('/register?', function(req, res, next) {
  res.render('register',{title:'register',err:req.query.err});
});

/* GET users listing. */
router.get('/forgot-password', function(req, res, next) {
  res.render('forgotpassword');
});


/* GET users listing. */
router.post('/register-user?', function(req, res, next) {
  var useremail = req.body.useremail;
  var username = req.body.username;
  var userpassword = req.body.userpassword;

  var auq = 'INSERT INTO access_account (aa_email,aa_username,aa_password) VALUES ?';
  var auval = [[useremail,username,userpassword]];
  var chkemail = 'SELECT * FROM access_account WHERE aa_email = ?';
  var chkval =[useremail];

    con.query(chkemail,chkval,(err,res1 )=>{
       if(err){
           throw err
       }else {
           if(res1.length != 0){
                res.redirect('/users/register?err=1');
            }else{
              con.query(auq,[auval],(err2,res2)=>{
                if(err2){
                    throw err2
                }else{
                    res.redirect('/users/register');
                }

            });
            }
       }
    });
});




module.exports = router;
