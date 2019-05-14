var constructorPersona = function(nombre){
    this.nombre = nombre;
};

constructorPersona.prototype.sayHi = function(){
    console.log(`hola ${this.nombre}`)
};

var Magda = new constructorPersona("Magda");
console.log("Magda",Magda);
Magda.sayHi();