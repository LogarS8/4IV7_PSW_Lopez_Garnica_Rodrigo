<%-- 
    Document   : formulario
    Author     : Rodrigo Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <style>
        html,
        body {
        height: 100%;
        }

        
    </style>
    <body>
        
        <%@page import="java.time.LocalDateTime"%>
        <%@page import="java.time.format.DateTimeFormatter"%>
        <%
//            obtener informacion de fechas
            DateTimeFormatter añodtf = DateTimeFormatter.ofPattern("yyyy");
            String año=añodtf.format(LocalDateTime.now());
            DateTimeFormatter mesdtf = DateTimeFormatter.ofPattern("MMMM");
            String mes=mesdtf.format(LocalDateTime.now());
            DateTimeFormatter diadtf = DateTimeFormatter.ofPattern("dd");
            String dia=diadtf.format(LocalDateTime.now());
            
            //obtener turno y grupo del index
            String s = request.getParameter("turno");
            String gra = request.getParameter("grado");
            String g = request.getParameter("grupo");

            String titulos[]=new String[4];
            String[] clases = new String[4];
            String ocultar="";
            
            switch(gra){
                case "3":
                    titulos=new String[] {"PROGRAMACIÓN ORIENTADA A OBJETOS","LAB. DE PROYECTOS DE TECNOLOGÍAS DE LA INFORMACIÓN","ADMÓN. DE PROYECTOS DE TECNOLOGÍAS DE LA INFORMACIÓN",""};
                    clases=new String[] {"POO","LPTII","APTII",""};
                    ocultar = "style='display: none'"; 
                    break;
                case "4":
                    titulos=new String[] {"PROGRAMACIÓN Y SERVICIOS WEB","LAB. DE PROYECTOS DE TECNOLOGÍAS DE LA INFORMACIÓN II","BASES DE DATOS","TEC. DE PROGRAMACIÓN CON CALIDAD"};
                    clases=new String[]{"PSW","LPTIII","BD","TPPC"};
                    break;
                case "5":
                    titulos=new String[] {"SEGURIDAD WEB Y APLICACIONES","LAB. DE PROYECTOS DE TECNOLOGÍAS DE LA INFORMACIÓN III","INTRODUCCIÓN A LA INGENIERÍA DE PRUEBAS","INTRODUCCIÓN A LOS SISTEMAS DISTRIBUIDOS"};
                    clases=new String[]{"SWA","LPTIIII","IP","SD"};
                    break;
                case "6":
                    titulos=new String[] {"MÉTODOS ÁGILES DE PROGRAMACIÓN","LAB. DE PROYECTOS DE TECNOLOGÍAS DE LA INFORMACIÓN IV","SOPORTE DE SOFTWARE","INGENIERÍA DE SOFTWARE BÁSICA"};
                    clases=new String[]{"MAP","LPTIIV","SS","ISB"};
                    break;
            }


            String nombre = request.getParameter("nombre");
            String boleta = request.getParameter("boleta");
            if(boleta==null){boleta="";}
            if(nombre==null){nombre="";}


        %>
        
        <header class="container">
            <div class="row justify-content-end">
                Ciudad de México, a <%=dia%> de <%=mes%> del <%=año%>
            </div>
            <div class="row justify-content-end fw-bold">
                ASUNTO: 
            </div>
            <div class="row justify-content-end">
                CARTA COMPROMISO 
            </div>
        </header>

        <section class="container">
            <div class="row justify-content-start fw-bold fs-4">
                ING. MARÍA DE LOURDES HERNÁNDEZ MENDOZA<BR>
                PRESIDENTE DE LA ACADEMIA DE PROGRAMACIÓN<BR>
                CECyT 9 "JUAN DE DIOS BÁTIZ"
                P R E S E N T E<br><br>
            </div>
        </section>

        <section class="container">
            <form action="menu.jsp" method="get" enctype="multipart/form-data" >
                <input type="hidden" value="<%=gra%>" name="gra">
                <input type="hidden" value="<%=s%>" name="s">
                <input type="hidden" value="<%=g%>" name="g">
                <input type="hidden" value="<%=dia%>/<%=mes%>/<%=año%>" name="fecha">

                <div class="fs-2 justify-content-start">
                    Por medio de la presente yo <input class="btn btn-light btn-outline-success"  type="text" name="nombre" size="50" onkeypress="return valNombre(this)" oninput="actNombre(this)" required="" value="<%=nombre%>">
                    alumno (a) del CECyT 9 "Juan de Dios Bátiz", inscrito (a) en el grupo <%=gra%>I<%=s%><%=g%> de la carrera técnico en 
                    programación con número de boleta <input class="btn btn-light btn-outline-success"  type="number" name="boleta" id="boleta" oninput="return valNumeros(this)" required="" value="<%=boleta%>">
                    , y con fundamento en lo expresado en el artículo 107, fracciones IX y X, y en el artículo 108 fracción IX del Reglamento Interno 
                    del Instituto Politécnico Nacional, manifiesto mi compromiso de  cuidar y hacer buen uso de los equipos de cómputo (CPU, monitor, teclado, 
                    mouse y demás componentes del mismo), que me han sido asignados en los laboratorios del área. Así mismo me comprometo a reportar con el 
                    profesor (a) responsable, cualquier irregularidad o anomalía dentro de los 10 primeros minutos de cada clase, siendo consciente de que, 
                    de no ser así, puedo ser acreedor de alguna de las sanciones establecidas en el artículo 110 del citado reglamento.<br>
                    El o los equipos de cómputo que tengo asignados y que utilizo en mis clases son:
                </div><br><br>
                <div class="table fs-3 justify-content-center">
                    <div class="row my-4 justify-content-center fw-bold">
                        <div class="col-8">
                            <div class="">
                                Unidad de aprendizaje
                            </div>
                        </div>
                        <div class="col-1 justify-content-center">
                            LBD
                        </div>
                        <div class="col-1 justify-content-center">
                            LNV
                        </div>
                        <div class="col-1 justify-content-center">
                            LDS
                        </div>
                        <div class="col-1 justify-content-center">
                            4.0
                        </div>
                    </div>
                    <div class="row my-4 justify-content-center">
                        <div class="col-8">
                            <%=titulos[0]%>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[0]%>-LBD" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[0]%>-LNV" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[0]%>-LDS" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[0]%>-4.0" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                    </div>
                    <div class="row my-4 justify-content-center">
                        <div class="col-8">
                            <%=titulos[1]%>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" name="<%=clases[1]%>-LBD" style="width: 55px" maxlength="2" onkeypress="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[1]%>-LNV" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[1]%>-LDS" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[1]%>-4.0" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                    </div>
                    <div class="row my-4 justify-content-center">
                        <div class="col-8">
                            <%=titulos[2]%>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[2]%>-LBD" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[2]%>-LNV" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[2]%>-LDS" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[2]%>-4.0" style="width: 55px" maxlength="2" oninput="return valNumeros(this)">
                            </span>
                        </div>
                    </div>
                    <div class="row my-4 justify-content-center" <%=ocultar%>>
                        <div class="col-8">
                            <%=titulos[3]%>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[3]%>-LBD" style="width: 55px" maxlength="2" max="99" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[3]%>-LNV" style="width: 55px" maxlength="2" max="99" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" class="" name="<%=clases[3]%>-LDS" style="width: 55px" maxlength="2" max="99" oninput="return valNumeros(this)">
                            </span>
                        </div>
                        <div class="col-1 justify-content-center">
                            <span class="container">
                                <input type="number" name="<%=clases[3]%>-4.0" style="width: 55px" maxlength="2" max="99" oninput="return valNumeros(this)">
                            </span>
                        </div>
                    </div>
                </div>
                <br><br><br>
                <div class="fs-3 row justify-content-center">
                    Seleccione foto:
                    <input class="justify-content-center" type="file" accept="image/*" name="imagen">
                    <br><br><br>
                </div>
                <div class="fs-2 row justify-content-center" id="anuncio">
                    ATENTAMENTE<br><br><br>
                </div>
                <div class="row justify-content-center">
                    <input type="submit" value="Enviar datos" class=" btn btn-light btn-outline-success">
                </div>
            </form>
        </section><br><br><br>
    </body>
    <script type="text/javascript">
        function actNombre(btn){
            var texto = btn.value;
            document.getElementById('anuncio').innerHTML = "ATENTAMENTE<br><br>"+texto+"<br><br><br>";
        }
        
        function valNombre(btn){
            var texto = btn.value;
            var patron = /^[a-zA-Z ]*$/;
            if(!patron.test(texto)){
                btn.style = "color: red"
            } else {
                btn.style = "color: black"
            }
            return patron.test(texto);
        }
        
        function valNumeros(btn){
            var patron =  /^\d*$/;
            var text = btn.value;
            return patron.test(text)
        }
    </script>
</html>
