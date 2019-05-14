function filter(arr,func){
    var arrret = [];
    for (let index = 0; index < arr.length; index++) {
        if (func(arr[index])){
            arrret.push(arr[index]);
        }
    }
    return arrret;
}

console.log(sumame([1,2,3,4]));
console.log(sumame([3]));
console.log(sumame([]));