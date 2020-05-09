const express = require('express');
const router = express.Router();

const mysqlConnection  = require('../database.js');

// INSERT An User
router.post('/bier', (req, res) => {

    const {code, name, brand, description, tipo, ibu, alcohol, likes, dislikes, img, state_code} = req.body;
    
    var today = new Date();
    var creation_date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

    console.log("HOLAAAAAAAAAAAAAAAAAA");
    console.log(creation_date);

    console.log(code, name, brand, description, tipo, ibu, alcohol, likes, dislikes, img, creation_date, state_code);
    const query = "INSERT INTO bier (code, name, brand, description, tipo, ibu, alcohol, likes, dislikes, img, creation_date, state_code) VALUES ('"+code+"', '"+name+"', '"+brand+"','"+description+"','"+tipo+"', '"+ibu+"', '"+alcohol+"', '"+likes+"', '"+dislikes+"', '"+img+"', '"+creation_date+"', '"+state_code+"');"
    mysqlConnection.query(query, (err, rows, fields) => {
      if(!err) {
        res.json({status: 'bier saved'});
      } else {
        console.log(err);
        res.json({status: 'Error: bier Dont Saved'});
      }
    });
  });

router.get('/bier', (req, res) => {
    console.log("Ingresaste en /bier")
    let tipo = req.query.name
    let query = ""
    if(tipo == null){
      query = 'SELECT * FROM bier'
    }
    else {
      query = 'SELECT * FROM bier where name = ' + tipo
    }
    mysqlConnection.query(query, (err, rows, fields) => {
      if(!err) {
        res.json(rows);
      } else {
        console.log(err);
      }
    });  
  });

module.exports = router;
