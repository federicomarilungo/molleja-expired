const express = require('express');
const router = express.Router();

const mysqlConnection  = require('../database.js');

// INSERT An User
router.post('/bier', (req, res) => {

    const {user, pass, mail} = req.body;


    console.log(user, pass, mail);
    const query = "INSERT INTO `user` (`user_id`, `user`, `pass`, `mail`, `creation_date`, `state_code`) VALUES (NULL, '"+user+"', '"+pass+"', '"+mail+"', '2020-04-10', '1');"
    mysqlConnection.query(query, [user, pass, mail], (err, rows, fields) => {
      if(!err) {
        res.json({status: 'User Saved'});
      } else {
        console.log(err);
        res.json({status: 'Error: User Dont Saved'});
      }
    });
  
  });

router.get('/bier', (req, res) => {
    console.log(req.query.tipo)
    mysqlConnection.query('SELECT * FROM bier where tipo = '+req.query.tipo, (err, rows, fields) => {
      if(!err) {
        res.json(rows);
      } else {
        console.log(err);
      }
    });  
  });

module.exports = router;
