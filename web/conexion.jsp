<%-- 
    Document   : index
    Created on : 17/11/2015, 10:45:44 AM
    Author     : jota
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Estado de Conexión: </h1>
        
        <%
        Connection conn = null;
        Statement st = null;
        String url = "jdbc:mysql://localhost:3306/facturacion";
        String us = "root";
        String pass = "";
        
        try{
          Class.forName("com.mysql.jdbc.Driver");
          conn = (Connection)DriverManager.getConnection(url,us,pass);
          st = conn.createStatement();
          out.println("Conexion en Linea ...");
        }catch(Exception ex){
           out.println("Error en la conexion! ... intente mas tarde."); 
        }
        %>
        
        <a href="listar.jsp">ingrezar datos</a>
    </center>
    </body>
</html>
