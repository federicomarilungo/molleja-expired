//Require de módulos (importación de módulos)

var server = require("./server");
//Variable server contiene al módulo server, que contiene la función iniciar
//por lo tanto puedo usar sus funciones, como si fuese un objeto
var router = require("./router");
var requestHandlers = require("./requestHandlers");

var handle = {}
handle["/"] = requestHandlers.iniciar;
handle["/iniciar"] = requestHandlers.iniciar;
handle["/subir"] = requestHandlers.subir;
handle["/login"] = requestHandlers.login;

server.iniciar(router.route, handle);
//a la función iniciar del módulo server le paso como parámetro la función route del módulo router.
//Es importante entender que no se le está pasando el objeto router con su función.
//Solo se le pasa como parámetro la funcionalidad, la "acción", el verbo.
//El módulo server no necesita al objeto router para ejecutar dicha acción, solo necesita la acción
//También se le pasa el objeto hadle, que es un objeto que guarda pares clave valor, que asocian un string a una función del requestHandlers
//de esta manera se puede definir una url como una función distinta y estas se pasan al server para que puedan ser usadas.
