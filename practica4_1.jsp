

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 4 JSP</title>
    </head>
    <body>
        <h1>Formulario</h1>
        <form action="practica4_2.jsp" method="post">
             Nombre:
                    <input type="text" name="nombre"><br>
                    Apellido Paterno:
                    <input type="text" name="ape1"><br>
                    Apellido Materno:
                    <input type="text" name="ape2"><br>
                    Fecha de Nacimiento:
                    <input type="date" name="date"><br>
                    E-mail:
                    <input type="email" name="correo"><br>
                    Contraseña:
                    <input type="password" name="pass"><br>
                    
                    <input type="submit" name="Verificar Datos.">
        </form>
    </body>
</html>
