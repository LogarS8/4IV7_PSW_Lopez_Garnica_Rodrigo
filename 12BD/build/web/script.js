/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function seleccionar(){
    var select = document.getElementById("seleccion");
    var indice = select.selectedIndex;
    var selected = select.options[indice].value;
    
    switch (selected){
        case "todo":
            document.getElementById("AcTodo").style.display='block';
            document.getElementById("AcsNom").style.display='none';
            document.getElementById("AcsAP").style.display='none';
            document.getElementById("AcsAM").style.display='none';
            document.getElementById("AcsTel").style.display='none';
            break;
        case "sNom":
            document.getElementById("AcTodo").style.display='none';
            document.getElementById("AcsNom").style.display='block';
            document.getElementById("AcsAP").style.display='none';
            document.getElementById("AcsAM").style.display='none';
            document.getElementById("AcsTel").style.display='none';
            break;
        case "sAP":
            document.getElementById("AcTodo").style.display='none';
            document.getElementById("AcsNom").style.display='none';
            document.getElementById("AcsAP").style.display='block';
            document.getElementById("AcsAM").style.display='none';
            document.getElementById("AcsTel").style.display='none';
            break;
        case "sAM":
            document.getElementById("AcTodo").style.display='none';
            document.getElementById("AcsNom").style.display='none';
            document.getElementById("AcsAP").style.display='none';
            document.getElementById("AcsAM").style.display='block';
            document.getElementById("AcsTel").style.display='none';
            break;
        case "sTel":
            document.getElementById("AcTodo").style.display='none';
            document.getElementById("AcsNom").style.display='none';
            document.getElementById("AcsAP").style.display='none';
            document.getElementById("AcsAM").style.display='none';
            document.getElementById("AcsTel").style.display='block';
            break;
    }
    
}
