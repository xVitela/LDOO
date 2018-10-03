

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<p>Logeo Exitoso!</p>

<%
    LoginBean bean = (LoginBean)req.getAttribute("bean");
    out.print("Bienvenido, " + bean.getNomb);
    
%>