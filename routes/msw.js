var express = require('express');
var router = express.Router();
const con = require('./connection');
const main = require('./main');


//------------------------------- MSW START ----------------------------------//


//Get the List of Applicant In Database
router.get('/',(req,res,next)=>{
  if(req.session.email){
    var g = `SELECT * FROM msw_information `;
    con.query(g,(err,rs)=>{
      if(err){
        console.log(err);
      }

      res.render('mswtable',{ title : 'Applicant List', applicationpacket : rs});
      res.end();
    });
  }else{
    res.redirect('/users/login');
    res.end();
  }
});



//------------------------------- MSW END ----------------------------------//




module.exports = router;
