var express = require("express");
var fs = require("fs");
var app = express();
var bodyParser = require("body-parser");
var mongoose = require("mongoose");
var Schema = mongoose.Schema;

mongoose.connect("mongodb://127.0.0.1/fotos");

var userSchemaJSON = {
  email:String,
  password:String
};

var user_schema = new Schema(userSchemaJSON);
var User = mongoose.model("User", userSchemaJSON);

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
  console.log("Contraseña: "+ req.body.password);
  console.log("Email: "+ req.body.email);

  var user = new User({email: req.body.email, password: req.body.password});

  user.save(function(){
    res.send("Recibimos tus datos"+ req.body.password+ " " + req.body.email);
  });

});

app.listen(8080);
