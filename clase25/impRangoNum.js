rango = function(inicial, final){
    if (inicial < final) {
        for (let index = inicial; index <= final; index++ ) {
            console.log(index);
        }
    }else{
        for (let index = inicial; index >= final; index--) {
            console.log(index);            
        }
    }

}

//rango(10,20)
rango(20,10)