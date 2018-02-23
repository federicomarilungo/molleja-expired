var querystring = require("querystring");

function iniciar(response, postData) {
  console.log("Manipulador de peticiones 'iniciar' fue llamado.");
  var body = '<html>'+
  '<head>'+
  '<meta http‐equiv="Content‐Type" content="text/html; charset=UTF‐8" />'+
  '</head>'+
  '<body>'+
  '<form action="/subir" method="post">'+
  '<textarea name="text" rows="20" cols="60"></textarea>'+
  '<input type="submit" value="Enviar texto" />'+
  '</form>'+
  '<form action="/login" method="post">'+
  '<textarea name="text" rows="20" cols="60"></textarea>'+
  '<input type="submit" value="Enviar texto" />'+
  '</form>'+
  '</body>'+
  '</html>';
  response.writeHead(200);
  response.write(body);
  response.end();
}

function subir(response, postData) {
  console.log("Manipulador de petición 'subir' fue llamado.");
  response.writeHead(200);
  response.write("Tu enviaste: " + querystring.parse(postData)["text"]);
  response.write("Tu enviaste: " + postData);
  response.end();
}

function login(response, postData) {
  console.log("Manipulador de petición 'subir' fue llamado.");
  response.writeHead(200);
  response.write("Te estas intentando logear con: " + querystring.parse(postData)["text"]);;
  response.end();
}

exports.iniciar = iniciar;
exports.subir = subir;
exports.login = login;
