const cryptoRandomString = require('crypto-random-string');
const con = require('./connection');

var main = {



    random_id : function(){
        var id = cryptoRandomString({length: 10, type: 'base64'});
        return id;
    }

};


module.exports = main;