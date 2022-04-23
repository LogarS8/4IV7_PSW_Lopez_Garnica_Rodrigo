function vNf(btn){
    var text = btn.value;
    var patron = /^0*(?:[0-9]+|[0-9]+\.[0-9]+)$/;
    if (!patron.test(text)){
        btn.setCustomValidity("Introduzca solo números")
    } else {
        btn.setCustomValidity("")
    }

    
}
/*
Problema 1
*/

function calculonum(e){
    var numero1 = document.formulario1.num1.value;
    var numero2 = document.formulario1.num2.value;

    var resut = parseInt(numero1);
    var resutl = parseInt(numero2);
    var resultado = "";


    if(resut = resutl){
        resultado = resut*resutl;
    }else if(resut > resutl){
        resultado = resut - resutl;
    }else{
        resultado = resut + resutl;
    }
    document.formulario1.salidanum.value = resultado;
    e.preventDefault();
}

function borrarp(){
    document.formulario1.num1.value="";
    document.formulario1.num2.value="";
}

/*
Problema 2
*/

function mayor(e){
    var nom1 = parseInt(document.formulario2.num1.value);
    var nom2 = parseInt(document.formulario2.num2.value);
    var nom3 = parseInt(document.formulario2.num3.value);
    var numerom = "";

    if(nom1 >= nom2 && nom1 >= nom3){
        numerom = nom1;
    }else if(nom2 >= nom1 && nom2 >= nom3){
        numerom = nom2;
    }else{
        numerom = nom3;
    }
    document.formulario2.salidanumero.value = numerom;
    e.preventDefault();
}

function borrarz(){
    document.formulario2.num1.value="";
    document.formulario2.num2.value="";
    document.formulario2.num3.value="";
    document.formulario2.salidanumero.value="";
}


/*
Problema 3
*/

function total(e){
    var horastraba = parseInt(document.formulario3.horast.value);
    var resultado = "";

    if(horastraba >= 40){
        resultado = horastraba - 40;
        document.formulario3.horasex.value = resultado;
    }else{
        document.formulario3.horasex.value = "No tienes horas extras";
        document.formulario3.concepex.value = "No tienes horas extras";
    } 
    e.preventDefault();
}

function horasextra(e){
    var horas = parseInt(document.formulario3.horast.value);
    var pagohora = parseInt(document.formulario3.costhora.value);
    var sueldo = "";
    var dobles = "";
    var triples = "";

    if(horas > 48){
        triples = horas - 48;
        sueldo = 40 * pagohora + (8 * pagohora * 2) + (triples * pagohora *3);
    }else if(horas > 40){
        dobles = horas - 40;
        sueldo = 40 * pagohora + (dobles * pagohora * 2);
    }else{
        sueldo = horas * pagohora;
    }

    document.formulario3.concepex.value = sueldo;
    e.preventDefault();
}

function borrarl(){
    document.formulario3.horast.value="";
    document.formulario3.costhora.value="";
    document.formulario3.concepex.value="";
    document.formulario3.horasex.value="";
}
/*
Problema 4
*/

function utilidad(e){
    var salario = parseInt(document.formulario4.sueldom.value);
    var antiguedad = parseInt(document.formulario4.antigue.value);
    var utilidad = "";

    if(antiguedad < 1){
        utilidad = salario * 0.05;
    }else if(antiguedad >= 1 && antiguedad < 2){
        utilidad = salario * 0.07;
    }else if(antiguedad >=2 && antiguedad < 5){
        utilidad = salario * 0.10;
    }else if(antiguedad >=5 && antiguedad < 10){
        utilidad = salario * 0.15;
    }else if(antiguedad >=10){
        utilidad = salario * 0.20;
    }

    document.formulario4.utilidadfin.value = salario + utilidad;
    e.preventDefault();
}

function borrarñ(){
    document.formulario4.sueldom.value="";
    document.formulario4.antigue.value="";
    document.formulario4.utilidadfin.value="";
}