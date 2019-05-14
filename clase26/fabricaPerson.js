var constructorPerson = function(nombre, apellido){
    persona = {
        nombre: nombre,
        apellido: apellido,
        sayHi: function(){
            console.log(`soy  ${this.nombre} mi apellido es ${this.apellido}`);
        }
    }
    return persona;
}

Magda = constructorPerson("Magda","Becerra");
Ramiro = constructorPerson("Ramiro","Contreras");

Magda.sayHi();
Ramiro.sayHi();