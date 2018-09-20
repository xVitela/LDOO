

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 4 JSP</title>
    </head>
    <body>
        <h1>Formulario</h1>
        <%
             
    String nomb = request.getParameter("nombre");
    String ape1 = request.getParameter("ape1");
    String ape2 = request.getParameter("ape2");
    String date = request.getParameter("date");
    String mail = request.getParameter("correo");
    String pass = request.getParameter("pass");
    
           %>
           
    Nombre: <%=nomb%><br>
    Apellido Paterno: <%=ape1%><br>
    Apellido Materno: <%=ape2%><br>
    Fecha de nacimiento: <%=date%><br>
    E-mail: <%=mail%><br>
    Contraseña: <%=pass%><br>
    
        <a href="practica4_1.jsp">
            Volver
    </body>
</html>
