
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
    </head>
    <body>
        
        
        <form action="Login" method="POST">
            
            <input type="text" name="nomb" id="nombre" placeholder="Nombre" required="" /><br>
            <input type="password" name="pass" id="pass" placeholder="Contraseña" required/><br>
            <button type="submit">Aceptar</button><br>
        </form>
        
        <input type="button" onclick=" location.href='index.jsp' " value="Registro" name="boton" /> 
    </body>
</html>