

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Practica3"})
public class Practica3 extends HttpServlet {

 
    
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException {
       
    
    String nomb = req.getParameter("nombre");
    String ape1 = req.getParameter("ape1");
    String ape2 = req.getParameter("ape2");
    String date = req.getParameter("date");
    String mail = req.getParameter("correo");
    String pass = req.getParameter("pass");
    
    PrintWriter out = resp.getWriter();
    out.println("Nombre: " + nomb);
    out.println("Apellido Paterno: " + ape1);
    out.println("Apellido Materno: " + ape2);
    out.println("Fecha de Nacimiento: " + date);
    out.println("E-mail: " + mail);
    out.println("Contraseña: " + pass);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
     
        processRequest(req, resp);
    }

    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        
        processRequest(req, resp);
    }
    
    
 
    
  

 

    
}
