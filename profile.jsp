<%@page import="Controller.Process"%>
<%@page import = "modelo.Persona" %>
<% Persona p = (Persona)request.getSession().getAttribute("persona1"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
    </head>
    <body>
        
        <p><center><font Face="Arial" SIZE="4" COLOR="BLUE"> Nombre: <%=p.getNom()%></font></center></p> 
        <p><center><font Face="Arial" SIZE="4" COLOR="BLUE"><center> Correo: <%=p.getCorr() %></font></center></p>
  
        <input type="button" onclick=" location.href='loginup.jsp' " value="Inicio" name="boton" /> 
            
  
    </body>
</html>