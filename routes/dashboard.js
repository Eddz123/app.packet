var express = require('express');var router = express.Router();const main = require('./main');/* GET home page. */router.get('/', function(req, res, next) {  res.render('dashboard');});router.get('/dashboard',(req,res,next)=>{  if(req.session.email){    var g = `SELECT * FROM hha_information `;    con.query(g,(err,rs)=>{      if(err){        console.log(err);      }      res.render('dashboard',{ title : 'Applicant List', applicationpacket : rs});      res.end();    });  }else{    res.redirect('/users/login');    res.end();  }});module.exports = router;