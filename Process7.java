package CONTROLADOR;

import Modelao7.USUARIO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Process7 extends HttpServlet {

    private String pass;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
       String user = request.getParameter("usuario");
       String passw =request.getParameter("contrasena");
      
       
           Cookie cook1=new Cookie("name",user);
       Cookie cook2 = new Cookie("pass",pass);
       
       response.addCookie(cook1);
       response.addCookie(cook2);
       
    
       
       if(user.equals("") ||  pass.equals("")){
           request.getRequestDispatcher("logindown.jsp").forward(request,response);
       }
       else if(user.equals("Diego Vitela") && pass.equals("vitela123")){
           USUARIO  U;
           U = new USUARIO(user,pass);
           request.getSession().setAttribute("USUARIO1",U);
           request.getRequestDispatcher("loginup.jsp").forward(request,response);
        
       }
     
       else{
           request.getRequestDispatcher("logindown.jsp").forward(request,response);
       }
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}