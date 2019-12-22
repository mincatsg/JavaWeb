package MyPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        //��������������
       doPost(request,response);
}
public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{ 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	PrintWriter out=response.getWriter();
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String rePassword = request.getParameter("rePassword");
	String sex = request.getParameter("sex");
	String[] hobbies = request.getParameterValues("hobbies");
	String Info = request.getParameter("info");
	
	out.println("�û���=" + username +"</br>");
	out.println("����=" + password +"</br>");
	out.println("ȷ������=" + rePassword +"</br>");
	out.println("�Ա�=" + sex +"</br>");
	for(String str:hobbies) {
		out.println("��Ȥ����=" + str +"</br>");
	}
	out.println("��������=" + Info +"</br>");
	
  }

}
