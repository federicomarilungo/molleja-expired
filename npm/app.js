var express = require("express");
var fs = require("fs");
var app = express();
var bodyParser = require("body-parser");
var User = require("./models/user").User;

app.set("view engine", "jade");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

/* /BARRA */
app.get("/",function(req,res){
  console.log("Manipulador de peticiones '/' fue llamado.");
  res.render("index",{variable: "caquita"});
});

/* /LOGIN */
app.get("/login",function(req,res){
  console.log("Manipulador de peticiones 'login' fue llamado.");
  User.find(function(err, doc){
    console.log(doc);
    res.render("login");
  });
});

/* /JSON */
app.get("/json",function(req,res){
  console.log("Manipulador de peticiones 'json' fue llamado.");
  fs.readFile("./views/indexjson.json",function(err,json){
    res.writeHead(200,{"Content-Type":"application/json"});
    res.write(json);
    res.end();
  });
});

/* /USERS */
app.post("/users",function(req,res){
  console.log("Manipulador de peticiones 'Users' fue llamado.");

  var user = new User({email: req.body.email,
                        password: req.body.password,
                        password_confirmation: req.body.password_confirmation
                      });

  user.save(function(err){
    if(err){
      console.log(String(err));
    }
    res.send("Recibimos tus datos"+ req.body.password+ " " + req.body.email);
  });

});

app.listen(8080);
