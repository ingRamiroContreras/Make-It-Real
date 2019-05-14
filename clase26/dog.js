var constructorDog = function(nombre, edad){
    this.nombre = nombre;
    this.edad = edad;
    this.color = "blanco";
};

constructorDog.prototype.ladrar = function(){
    console.log("waf waf waf");
};

var Jack = new constructorDog("Gosling","2");
console.log("jack",Jack);
Jack.ladrar();

var Jacky = new constructorDog("Manuelita","2");
console.log("Jacky",Jacky);
Jack.ladrar();