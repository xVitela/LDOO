import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

public class ControllerPractica5 extends HttpServlet {  
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        
        
        resp.setContentType("text/html");  
        PrintWriter out = resp.getWriter();  
          
        String nomb = req.getParameter("nombre");  
        String pass = req.getParameter("pass");  
          
        LoginBean bean = new LoginBean();  
        bean.setNomb(nomb);  
        bean.setPass(pass);  
        req.setAttribute("bean",bean);  
          
        boolean status=bean.validate();  
          
        if(status){  
            RequestDispatcher rd=req.getRequestDispatcher("loginup5.jsp");  
            rd.forward(req, resp);  
        }  
        else{  
            RequestDispatcher rd=req.getRequestDispatcher("logindown5.jsp");  
            rd.forward(req, resp);  
        }  
      
    }  
  
    @Override  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        doPost(req, resp);  
    }  
}