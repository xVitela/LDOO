

<%@page import="java.lang.System"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@ page import = "java.io.*,java.util.*" %>
<%
  
   Date createTime = new Date(session.getCreationTime());
   Date lastAccessTime = new Date(session.getLastAccessedTime());
   String title = "Bienvenido";
   
   String nomb = new String ("Diego");
   String ape1 = new String ("Vitela");
   String ape2 = new String ("Herrera");
   String mail = new String("vitela@gmail.com");
   String userID = new String("Vitela");
   String pass = new String("1234");
   
 
   Integer Count = new Integer(0);
   String visitCountKey = new String("Count");
   
        if (session.isNew() ){
            title = "Bienvenido";
            session.setAttribute(userID, pass);
            session.setAttribute(visitCountKey,  Count);
       } 
   
   Count = (Integer)session.getAttribute(visitCountKey);
   Count = Count + 1;
   userID = (String)session.getAttribute(userID);
   session.setAttribute(visitCountKey,  Count);
%>


<html>
   <head>
      <title>Sesiones</title>
   </head>
   
   <body>
      
      <table border = "1" align = "center"> 
         <tr bgcolor = "#949494">
   
                    <tr>
                    <td>Nombre</td>
                    <td><%=nomb%></td>
                    </tr>
                    <tr>
                    <td>Email</td>
                    <td><%=mail%></td>
                    </tr>
                   <tr>
                    <td>UserID</td>
                    <td><%=userID%></td>
                    </tr>
                   <tr>
                    <td>Pass</td>
                    <td><%=pass%></td>
                    </tr>
                   <tr>
                    <td>Tiempo de Creacion</td>
                    <td><% out.print(createTime);%></td>
                    </tr>
                   <tr>
                    <td>Ultimo Acceso</td>
                    <td><% out.print(lastAccessTime);%></td>
                    </tr>
                   <tr>
                    <td>Visitas</td>
                    <td><%out.print(Count);%></td>
                    </tr>
          
      </table> 
   
   </body>
</html>










