<%@page import = "Model.User" %>
<% User u = (User)request.getSession().getAttribute("user2"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exito</title>
    </head>
    <body>
        <h1>Bienvenido</h1>
         <h3>Bienvenidos ${sessionScope.user} </h3>
        
        
        <p><center><font Face="Arial" SIZE="4" COLOR="BLUE"> Bienvenido Usuario: <%=u.getNomb() %></font></center></p>

            <input type="button" onclick=" location.href='login.jsp' " value="Cerrar Sesion" name="boton" /> 
            <input type="button" onclick=" location.href='profile.jsp' " value="Perfil" name="boton" /> 
    </body>
</html>