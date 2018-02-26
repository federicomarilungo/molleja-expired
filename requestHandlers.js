var querystring = require("querystring");
var fs = require("fs");

function iniciar(response, postData) {
  console.log("Manipulador de peticiones 'iniciar' fue llamado.");
  fs.readFile("./index.html",function(err,html){
    response.writeHead(200);
    response.write(html);
    response.end();
  });
}

function subir(response, postData) {
  console.log("Manipulador de petición 'subir' fue llamado.");
  response.writeHead(200);
  response.write("Tu enviaste: " + querystring.parse(postData)["text"]);
  response.write("Tu enviaste: " + postData);
  response.end();
}

function login(response, postData) {
  console.log("Manipulador de peticiones 'iniciar' fue llamado.");
  fs.readFile("./login.html",function(err,html){
    response.writeHead(200,{"Content-Type":"text/html"});
    response.write(html);
    response.end();
  });
}

function json(response, postData) {
  console.log("Manipulador de peticiones 'iniciar' fue llamado.");
  fs.readFile("./json.json",function(err,json){
    response.writeHead(200,{"Content-Type":"application/json"});
    response.write(json);
    //response.write(JSON.stringify({nombre : "Uriel",username:"uriel"}));
    response.end();
  });
}

exports.iniciar = iniciar;
exports.subir = subir;
exports.login = login;
exports.json = json;
