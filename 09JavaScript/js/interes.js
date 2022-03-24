/*
Vamos a realizar una funcion que se encargue de validar la entrada de numeros por medio de una expresion regular
*/
function vNf(btn){
    var text = btn.value;
    var patron = /^0*(?:[0-9]+|[0-9]+\.[0-9]+)$/;
    if (!patron.test(text)){
        btn.setCustomValidity("Introduzca solo números")
    } else {
        btn.setCustomValidity("")
    }

    
}

function vNi(btn){
    var text = btn.value;
    var patron = /^0*[0-9]+$/;
    if (!patron.test(text)){
        btn.setCustomValidity("Introduzca solo números enteros")
    } else {
        btn.setCustomValidity("")
    }
}

function vN0_48(btn){
    var text = btn.value;
    var patron = /^0*(?:[1-9]|[1-3][0-9]|4[0-8])$/
    if(!patron.test(text)){
        btn.setCustomValidity("Introduzca un valor entre 1 y 48")
    } else {
        btn.setCustomValidity("")
    }

}

function vCal(btn) {
    var text = btn.value;
    var patron = /^0*(?:[0-9]|[0-9]\.[0-9]{1,2}|10)$/
    if(!patron.test(text)){
        btn.setCustomValidity("Introduzca una calificación valida")
    } else {
        btn.setCustomValidity("")
    }
}

function vAño(btn){
    var text = btn.value;
    var patron = /^0*[0-9]{1,4}$/
    if(!patron.test(text)){
        btn.setCustomValidity("Introduzca una año (4 cifras)")
    } else {
        btn.setCustomValidity("")
    }
}

//Ejercicio 1

function validarn(e){
    var teclado = (document.all)? e.keyCode : e.which;
    if(teclado == 8) return true;
    var patron = /[0-9\d .]/;
    var codigo = String.fromCharCode(teclado);
    return patron.test(codigo);
}

function interes(){

    var valor = document.formulario.cantidad.value;
    var mes = document.formulario.meses.value;
    if(mes>48){
        alert("El numero maximo de meses es 48");
    }
    var resu = parseInt(mes);
    var result = parseInt(valor);
    var interes = result*0.037;
    var total = interes + result;
    var total2 = total * resu;

    document.formulario.sueldoI.value = "$" + total2;
}

function borrarf(){
    document.formulario.cantidad.value="";
    document.formulario.sueldoI.value="";
    document.formulario.meses.value="";
}

//Ejercicio 2

function comisionf(){
    var sueldo = document.formulario1.sueldoB.value;
    var resultado = parseInt(sueldo);
    var comision = resultado * 0.30;

    document.formulario1.totalcomisiones.value = "$" + comision;
}

function sueldoT(){
    var sueldo = document.formulario1.sueldoB.value;
    var resultado = parseInt(sueldo);
    var comision = resultado * 0.30;
    var tot = resultado + comision;

    document.formulario1.sueldoC.value = "$" + tot;
}

function borrarm(){
    document.formulario1.totalcomisiones.value="";
    document.formulario1.sueldoC.value="";
    document.formulario1.sueldoB.value="";
}
//Ejercicio 3

function descuento(){
    var valor = document.formulario2.compra.value;
    var result = parseInt(valor);
    var calculo = result * 0.15;
    var desc = valor - calculo;

    document.formulario2.totalC.value = "$" + desc;
}

function borrart(){
    document.formulario2.compra.value = "";
    document.formulario2.totalC.value = "";
}
//Ejercicio 4

function promedion(){
    var par1 = document.formulario3.p1.value;
    var par2 = document.formulario3.p2.value;
    var par3 = document.formulario3.p3.value;

    var resultado = (parseInt(par1)+parseInt(par2)+parseInt(par3))/3;
    document.formulario3.prom.value = resultado;
}

function calificacion(){
    var par1 = document.formulario3.p1.value;
    var par2 = document.formulario3.p2.value;
    var par3 = document.formulario3.p3.value;
    var exam = document.formulario3.final.value;
    var work = document.formulario3.trabajof.value;

    var resultado = (parseInt(par1)+parseInt(par2)+parseInt(par3))/3;
    
    var resultado2 = resultado*0.55 + exam*0.3 + work*0.15;
    document.formulario3.calfin.value = resultado2;

}
//Ejercicio 5

function procentajes(){
    var fem = document.formulario4.mujeres.value;
    var mas = document.formulario4.hombres.value;
    var todo = parseInt(fem)+parseInt(mas);

    var resultadof = (fem/todo)*100;
    var resultadom = (mas/todo)*100;

    document.formulario4.muj.value = resultadof + "%";
    document.formulario4.hom.value = resultadom + "%";
}
//Ejercicio 6

function calculoEdad(){
    var añon = document.formulario5.fechaN.value;
    var añoa = document.formulario5.fechaA.value;

    var resultado = añoa - añon;

    document.formulario5.edadN.value = resultado;
}

    