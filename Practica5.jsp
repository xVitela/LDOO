

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulaio MVC</title>
    </head>
    <body>
        <h1>Formulario</h1>
             <form action="ControllerPractica5" method="post">
                    Nombre:
                    <input type="text" name="nombre"><br>
                    E-mail:
                    <input type="email" name="correo"><br>
                    Contraseña:
                    <input type="password" name="pass"><br>
                    <input type="submit" value="login">
                    
             </form>
    </body>
</html>
