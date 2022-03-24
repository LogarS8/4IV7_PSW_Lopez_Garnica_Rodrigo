var formulario=document.getElementById('formulario1');

function validar(e) {
    var valorauton=document.getElementById('valorauto').value;
    var cuotain = document.getElementById('cuotainicial').value;
    
    var interess=document.getElementById('interes').value;

    var mesess = document.getElementsByName('meses');

    for (var i = 0; i < mesess.length; i++) {
        if(mesess[i].checked) {
            var mes = mesess[i].value;
            console.log(mesess[i].value);
        }
        
    }

    if(parseInt(valorauton)>100000 && parseInt(valorauton)<1000000 && parseInt(cuotain)>parseInt(valorauton)*0.1) {
        var s = (parseInt(valorauton)-parseInt(cuotain))*((1+parseInt(interess)/100)**parseInt(mes));
        var mostrar = document.getElementById('mensualidad');
        mostrar.value = s;
    } else {
        alert("Asegurese de que el valor del auto esté entre 100,000 y 1,000,000 y que el enganche sea mayor al 10% del valor")
    }
    
    e.preventDefault();

}

formulario.addEventListener('submit', validar);