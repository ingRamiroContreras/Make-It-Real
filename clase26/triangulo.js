var triangulo = function (numero) {
    var cant = ""
    for (let index = 0; index < numero; index++) {
        cant += "*";
        console.log(cant);
    }
}

triangulo(20)

var cindy = {
    nombre: "Cindy",
    apellido: "Duarte",
    edad: 26
}

var sayHi = function(persona){
    console.log(`Hola, soy ${persona.nombre} y tengo ${persona.edad} años`);
}

sayHi(cindy);

cindy.sayHi = sayHi;
console.log(cindy);