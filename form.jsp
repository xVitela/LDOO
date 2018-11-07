<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
         
        <h1>FORMULARIO</h1>
    <center><form action="Procesar" method="POST">
            ${sessionScope.sessionAttributeName}
            <input type="text" name="nomb" id="nombre" placeholder="Nombre" required/><br>
            <input type="email" name="mail" id="mail" placeholder= "E-mail" required /><br>
            <input type="password" name="pass" id="pass" placeholder="Contraseña" required/><br>
            <button type="submit">Aceptar</button><br>
        </form></center>
    <input type="button" onclick=" location.href='login.jsp' " value="Iniciar Sesion" name="boton" /> 
    </body>
</html>