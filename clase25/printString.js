stringToColumn = function(literal){
    for (let index = 0; index < literal.length; index++) {
        console.log(literal[index]);
    }
}

reverse = function(literal){
    let retorno = '';
    for (let index = (literal.length - 1); index >= 0; index--) {
        retorno = retorno + literal[index];
    } 
    //console.log('retorno', retorno)
    return retorno;
}

//stringToColumn("hola Rocks");
console.log(reverse("hola Rocks"));

