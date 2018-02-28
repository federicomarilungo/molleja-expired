var mongoose = require("mongoose");
var Schema = mongoose.Schema;

mongoose.connect("mongodb://127.0.0.1/fotos");

var posibles_valores = ["M","F"];
//var email_match = [/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,"Coloca un email correcto"];
var password_validation = {
  validator: function(p){ //p es la contraseña, hace referencia al campo en el cual está el validador
    return this.password_confirmation == p;
  },
  message: "Las contraseñas no son iguales"
}

var user_schema = new Schema({
  name: String,
  last_name: String,
  username: {type:String, require:true,maxlength:[50,"El nombre de usuario debe ser menor a 50 caracteres"], minlength:[8,"El nombre de usuario debe ser mayor a 8 caracteres"]},
  password: {
    type:String,
    require,
    minlength:[8,"El password debe ser mayor a 8 caracteres"],
    validate: password_validation
  },
  age: Number,
  email: {type:String, required: "El correo es obligatorio"},//{type:String, required: "El correo es obligatorio", match:email_match},
  date_of_birth: Date,
  sex: {type:String,enum:{values: posibles_valores, message:"Opción no valida, solo M o F"}}
});


//El virtual se usa para recibir un valor que no queremos que se guarde en BD
//"password_confirmation" es el nombre del atributo que se quiere guardar y que es enviado como json desde la app.js
user_schema.virtual("password_confirmation").set(function(password_confirmation){
  console.log("Entraste al set del password_confirmation.");
  this.p_c = password_confirmation; //password_confirmation vale lo que llegó como "password_confirmation" al modelo, y es guardado en el atributo virtual this.p_c
  console.log("password_confirmation vale:"+this.p_c);
});
user_schema.virtual("password_confirmation").get(function(){
  return this.p_c;
  console.log("Entraste al get del password_confirmation.");
});


var User = mongoose.model("User",user_schema);

module.exports.User = User;
