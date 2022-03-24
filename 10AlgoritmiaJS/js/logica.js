// problema 3

function problema3(){
    //definir un alfabeto
    var alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
            'M', 'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','V', 'W', 'X', 'Y', 'Z'];

    //obtener la cadena del input y separar por comas
    var p3_input = document.querySelector('#p3-input').value;

    var p3_palabra = p3_input.split(',');

    //eliminar el espacio que hay entre cada palabra 
    p3_palabra = p3_palabra.map(function (palabra){
        return palabra.replace(/\s/g, '').toUpperCase();
    });

    //calcular los caracteres unicos de cada palabra
    var p3_res = '';

    //iterar en cada palabra 
    p3_palabra.forEach(function (palabra, i){
        //separar las palabras en un array para leer cada letra 
        var letras_unicas = []; 
        var palabra_array = palabra.split('');
        //iterar al alfabeto
        alfabeto.forEach(function (letra, j){
            //iterar por palabra
            palabra_array.forEach(function (letra_palabra, k){
                //comprobar de que la letra esta dentro del alfabeto
                if(letra_palabra == letra){
                    //si la letra no la hemos contado, la agregamos a un array para contar las letras unicas
                    if(letras_unicas.indexOf(letra) < 0){
                        letras_unicas.push(letra)
                    }
                }
            });
        });
        p3_res += 'Palabra: ' + palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent = p3_res;
}

//problema 1
function texto(){

    var palabras = document.getElementById('p1-input').value.split(" ");

    var listafinal = [];
    for (var i = palabras.length-1; i >=0; i--) {
        listafinal.push(palabras[i])
    };

    var textofinal = '';
    listafinal.forEach(function(elemento){
        textofinal += elemento+" ";
    })

    document.getElementById('p1-output').innerHTML = textofinal;
}

//problema 2
function producto() {
    var v1 = document.querySelectorAll("input.p2x")
    var v2 = document.querySelectorAll("input.p2y")

    var productoescalar = []

    for (let i = 0; i < v1.length; i++) {
        productoescalar.push(v1[i].value*v2[i].value)
    }
    document.getElementById('p2-output').textContent = productoescalar
}