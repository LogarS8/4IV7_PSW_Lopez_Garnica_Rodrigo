<%-- 
    Document   : registroalumno
    Created on : 4/04/2022, 03:25:07 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" language="java" 
        import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //es codgio java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
       
        String userName, URL, password, driver;
        
        URL = "jdbc:mysql://localhost/alumno";
        userName = "root";
        password = "n0m3l0";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                // necesitamos los parametros
                String nom, appat, apmat, tel;
                int bol;
                nom = request.getParameter("nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                tel = request.getParameter("tel");
                bol = Integer.parseInt(request.getParameter("bol"));
                
                set = con.createStatement();
                
                String q = "insert into alumnobatiz"
                        + " values ("+bol+", '"+nom+"', '"+appat+"', '"+apmat+"', '"+tel+"')";
                
                int registro = set.executeUpdate(q);
                
                %>
                
                    <h1>Registro del Alumno Exitoso</h1>
                <%
                
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());
                %>
                    <h1>Error en el registro de la tabla</h1>
                <%
            }
        }catch(Exception e){
        System.out.println("Error al conectar la base de datos");
        System.out.println(e.getMessage());
        %>
        <h1>No connected T_T</h1>
        <%  
        }
        %>
        <br>
        <a href="index.html">Regresar a principal</a>
    </body>
</html>
