//MODULO ROUTER
//función route, recibe un pathname.

function route(handle, pathname, response, postData) {
  console.log("A punto de rutear una peticion para " + pathname);
  if (typeof handle[pathname] === 'function') {
    handle[pathname](response, postData);
  } else {
    console.log("No se encontro manipulador para " + pathname);
    response.writeHead(404);
    response.write("404 No Encontrado");
    response.end();
  }
}

exports.route = route;
