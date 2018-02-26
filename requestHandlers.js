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
    response.writeHead(200);
    response.write(html);
    response.end();
  });
}

exports.iniciar = iniciar;
exports.subir = subir;
exports.login = login;
