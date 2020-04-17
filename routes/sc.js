var express = require('express');
var router = express.Router();
const con = require('./connection');
const main = require('./main');


//------------------------------- SC START ----------------------------------//


//Get the List of Applicant form Database
router.get('/',(req,res,next)=>{
  if(req.session.email){
    var g = `SELECT * FROM sc_information `;
    con.query(g,(err,rs)=>{
      if(err){
        console.log(err);
      }

      res.render('sctable',{ title : 'Applicant List', applicationpacket : rs});
      res.end();
    });
  }else{
    res.redirect('/users/login');
    res.end();
  }
});


//------------------------------- SC END ----------------------------------//



module.exports = router;
