<%-- 
    Document   : menu
    Author     : Rodrigo Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="style.css" rel="stylesheet">
    </head>

    <%
        String s = request.getParameter("s");
        String gra = request.getParameter("gra");
        String g = request.getParameter("g");
        
        String nombre = request.getParameter("nombre");
        String boleta = request.getParameter("boleta");
        
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
        
        String salones[] = new String[]{"LBD","LNV","LDS","4.0"};
        String pos[] = new String[4];
        
        for(int j = 0;j<4;j++){
            for (int i = 0; i<4;i++){
                if (!request.getParameter(clases[j]+"-"+salones[i]).equals("")){
                    pos[j]=request.getParameter(clases[j]+"-"+salones[i]);
                    break;
                }
            }
        }
        
        String fecha = request.getParameter("fecha");

    %>
    
    <body class="text-center">
        <main class="form-signin">
            <button class="my-2 w-100 btn btn-lg btn-dark btn-outline-success" onclick="mostrarInfo()">Consultar</button>
            <form method="get" action="formulario.jsp">
                <input type="hidden" value="<%=gra%>" name="grado">
                <input type="hidden" value="<%=s%>" name="turno">
                <input type="hidden" value="<%=g%>" name="grupo">
                <input type="hidden" value="<%=nombre%>" name="nombre">
                <input type="hidden" value="<%=boleta%>" name="boleta">
                <button class="my-2 w-100 btn btn-lg btn-dark btn-outline-success" type="submit">Editar</button>
            </form>
        </main><br><br>
                
        <section class="container" style="display: none" id="p1">

            <div class="my-2 row justify-content-center">
                Nombre del alumno: <%=nombre%>
            </div>
            <div class="my-2 row justify-content-center">
                Boleta: <%=boleta%>
            </div>
            <div class="my-2 row justify-content-center">
                Grupo: <%=gra%>I<%=s%><%=g%>
            </div>
            <div class="my-2 row justify-content-center">
                Registro: <%=fecha%>
            </div>
            
        </section><br><br>
            
        <section class="container" style="display: none" id="p2">
            
            <div class="table justify-content-center">
                
                <div class="row my-2 justify-content-center">
                    <div class="col-8">
                        Unidad de aprendizaje
                    </div>
                    <div class="col-2 justify-content-center">
                        Núm. de Máquina
                    </div>
                </div>
                <div class="row my-2 justify-content-center">
                    <div class="col-8">
                        <%=titulos[0]%>
                    </div>
                    <div class="col-2 justify-content-center">
                        <%=pos[0]%>
                    </div>
                </div>
                <div class="row my-2 justify-content-center">
                    <div class="col-8">
                        <%=titulos[1]%>
                    </div>
                    <div class="col-2 justify-content-center">
                        <%=pos[1]%>
                    </div>
                </div>
                <div class="row my-2 justify-content-center">
                    <div class="col-8">
                        <%=titulos[2]%>
                    </div>
                    <div class="col-2 justify-content-center">
                        <%=pos[2]%>
                    </div>
                </div>
                <div class="row my-2 justify-content-center" <%=ocultar%>>
                    <div class="col-8">
                        <%=titulos[3]%>
                    </div>
                    <div class="col-2 justify-content-center">
                        <%=pos[3]%>
                    </div>
                </div>
                
            </div>
            
        </section><br><br>
    </body>
    <script type="text/javascript">
        
        function mostrarInfo(){
            document.getElementById("p1").style="display: block";
            document.getElementById("p2").style="display: block";
        }
        
    </script>
</html>
