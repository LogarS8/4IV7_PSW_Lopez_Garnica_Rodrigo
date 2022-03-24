// vamos a necesitar obtener todas las piezas 

var piezas = document.getElementsByClassName('movil');

// redimensionar las piezas

var tamWidth = [134, 192, 134, 163, 134, 163, 134, 192, 134];
var tamHeight = [163, 134, 163, 134, 192, 134, 163, 134, 163];

for(var i = 0; i < piezas.length; i++){
    // enviar el atributo de w h 
    piezas[i].setAttribute("width", tamWidth[i]);
    piezas[i].setAttribute("heigth", tamHeight[i]);
    piezas[i].setAttribute("x", Math.floor(Math.random()*10)+i);
    piezas[i].setAttribute("y", Math.floor(Math.random()*400)+i);
    // que se pueda mover 
    piezas[i].setAttribute("onmousedown", "seleccionarElemento(evt)");

}

var elementoSeleccionado = 0;
var currentX = 0;
var currentY = 0;
var currentPosX = 0;
var currentPosY = 0;

function seleccionarElemento(evt){
    elementoSeleccionado = reordenar(evt);
    currentX = evt.clientX;
    currentY = evt.clientY;
    currentPosX = parseFloat(elementoSeleccionado.getAtrribute("x"));
    currentPosY = parseFloat(elementoSeleccionado.getAtrribute("y"));
    // ahora si debe de existir un movimiento
    elementoSeleccionado.setAttribute("onmousemove", "moverElemento(evt)");
}

function moverElemento(evt){
    var dx = evt.clientX - currentPosX;
    var dy = evt.clientY - currentPosY;

    currentPosX = currentPosX + dx;
    currentPosY = currentPosY + dy;

    elementoSeleccionado.setAttribute("x", currentPosX);
    elementoSeleccionado.setAttribute("y", currentPosY);

    currentPosX = evt.clientX;
    currentPosY = evt.clientY;

    elementoSeleccionado.setAttribute("onmousedown", "desseleccionarElemento");
    elementoSeleccionado.setAttribute("onmouseup", "desseleccionarElemento");
    iman();
}    

function desseleccionarElemento(evt){
    //validar que haga el match
    testing();
    if(elementoSeleccionado != 0){
        //hay que eliminar los atributos
        elementoSeleccionado.removeAttribute("onmousemove");
        elementoSeleccionado.removeAttribute("onmouseout");
        elementoSeleccionado.removeAttribute("onmouseup");
        elementoSeleccionado = 0;

    }
}

var entorno = document.getElementById('entorno');

function reordenar(evt){
    var padre = evt.target.parentNode;
    var clone = padre.cloneNode(true);
    
}