//Require de módulos (importación de módulos)
var http = require("http");
var url = require("url");

//Creación de función a exportar como módulo
function iniciar(route, handle) { //Se le pasa como parámetro la función route del módulo router.js y el objeto de claves valor que relaciona strings con funciones de requestHandlers
  //FUNCINO DE CALLBACK
  function onRequest(request, response) {
      var pathname = url.parse(request.url).pathname;
      var postData = "";

      console.log("Petición para " + pathname + " recibida.");
      request.setEncoding("utf8");

      request.addListener("data", function(postDataPart) {
        postData = postData + postDataPart;
        console.log("Recibido trozo POST '" + postDataPart + "'.");
      });

      request.addListener("end", function() {
        route(handle, pathname, response, postData);
      });
  }

  //CREACIÓN DE SERVER, PASANDOLE LA FUNCIÓN DE CALLBACK COMO PARÁMETRO Y SETEANDO EL PUERTO EN EL QUE VA A ESCUCHAR
  http.createServer(onRequest).listen(8888);
  console.log("Servidor Iniciado.");
}

//Comando para exportar una función como módulo
exports.iniciar = iniciar;
