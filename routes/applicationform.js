var express = require('express');var router = express.Router();const main = require('./main');/* GET APPLICATION FORM */router.get('/', function(req, res, next) {  res.render('applicationpacket');});/* GET STARTING FORMS */router.get('/specialization', function(req, res, next) {  res.render('pages/specialization');});/* GET home page. */router.get('/hha/startappform', function(req, res, next) {  res.render('pages/hha_pages/start');});    module.exports = router;