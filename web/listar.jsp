<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Empresa</title>
    </head>
    <body>
    <center>
        <%        %>    

        <form name="empresa" method="post" action="listar.jsp" ><br /> 
            Nit: <input type="text" name="nit" /><br />
            <br />
            Regimen Contributivo: <select name="regimen"> 
                <option>Simplificado</option>
                <option>Común</option>
                <option>Prima media con prestación definida</option>
                <option>Legal vigente</option>
                <option>Especial</option>
                <option>ahorro individual con solidaridad</option>
            </select><br />
            <br />
            Nombre Empresa: <input type="text" name="empresa" /><br />
            <br />
            Pais: <input type="text" name="pais" /><br />
            <br />
            Departamento: <input type="text" name="departamento" /><br />
            <br />
            Ciudad: <input type="text" name="ciudad" /><br />
            <br />
            Logo: <input type="file" name="logo" style="width:300px"><br />
            <br />
            Resolucion Dian: <input type="text" name="resolucion" /><br />
            <br />
            Dirección: <input type="text" name="direccion" /><br />
            <br />
            Telefono: <input type="text" name="telefono" /><br />
            <br />
            Nombre de Registro: <input type="text" name="registro" /><br />
            <br />
            Identificación Representante: <input type="text" name="cedula" /><br />
            <br />
            Nombre Representante: <input type="text" name="nombre_represen" /><br />
            <br />
            Apellido Representante: <input type="text" name="apellido_represen" /><br />
            <br />
            <input type="submit" value="Guardar"><br />
        </form>

        <%String nit = request.getParameter("nit");
            String regimen = request.getParameter("regimen");
            String empresa = request.getParameter("empresa");
            String pais = request.getParameter("pais");
            String departamento = request.getParameter("departamento");
            String ciudad = request.getParameter("ciudad");
            String logo = request.getParameter("logo");
            String resolucion = request.getParameter("resolucion");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String registro = request.getParameter("registro");
            String cedula = request.getParameter("cedula");
            String nombre_represen = request.getParameter("nombre_represen");
            String apellido_represen = request.getParameter("apellido_represen");

            if (nit != null && regimen != null && empresa != null && pais != null && departamento != null && ciudad != null && logo != null && resolucion != null && direccion != null && telefono != null && registro != null && cedula != null && nombre_represen != null && apellido_represen != null) {
                String insertar = "INSERT INTO empresa (NIT_EMPRESA,REGIMEN_CONTRIBUTIVO,NOMBRE_COMERCIAL,PAIS,DEPARTAMENTO,CIUDAD,LOGO,RESOLUCION_DIAN,DIRECCION,TELEFONO,NOMBRE_REGISTRO,IDENTIFICACION_REPRESENTANTE,NOMBRE_REPRESENTANTE,APELLIDO_REPRESENTANTE)VALUES('" + nit + "','" + regimen + "','" + empresa + "','" + pais + "','" + departamento + "', '" + ciudad + "','" + logo + "','" + resolucion + "','" + direccion + "','" + telefono + "','" + registro + "','" + cedula + "','" + nombre_represen + "','" + apellido_represen + "')  ";
                String insertUser = "INSERT INTO representante(cedula,usuario,contrasena)VALUES('" + cedula + "','" + nit + "','" + cedula + "')";
                st = conn.createStatement();
                st.executeUpdate(insertar);
                st.executeUpdate(insertUser);

                out.print("registro exitoso!!  usuario/apellido y contarseña/cedula creados");
            } else {
                out.print("complete todos los campos!! ");
            }

        %>

    </center>

</body>
</html>
