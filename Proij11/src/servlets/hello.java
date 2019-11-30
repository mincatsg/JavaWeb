package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "hello")
public class hello extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String name = request.getParameter("name");
        String password =  request.getParameter("password");
        String flogin=request.getParameter("flogin");
        if(flogin.equals("yes")){
            Cookie cookie=new Cookie("flogin","yes");
            cookie.setMaxAge(10);
            response.addCookie(cookie);
            response.sendRedirect("hello.jsp");
        }else {
        	 response.sendRedirect("hello.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
               this.doPost(request, response);
    }
}
