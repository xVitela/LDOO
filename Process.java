
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.User;


public class Process extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        
        String nomb = request.getParameter("nomb");
        String mail = request.getParameter("mail");
        String pass = request.getParameter("pass");
        
        if(pass.equals("vitela123")){
            session.setAttribute("pass", pass);
            response.sendRedirect("login.jsp");
            User u = new User(nomb, mail, pass);
            request.getSession().setAttribute("user1", u);
        }else{
            request.getRequestDispatcher("logindown.jsp").forward(request, response);    
    
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