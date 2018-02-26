var express = require("express");

var app = express();

app.set("view engine", "jade");

app.get("/",function(req,res){
  //res.send("hola mundo");
  res.render("index",{variable: "caquita"});
  //res.render("indexjson",{variable: "caquita"});
});

app.listen(8080);
