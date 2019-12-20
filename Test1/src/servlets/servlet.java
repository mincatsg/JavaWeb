package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
 
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;
@WebServlet("/servlet")
public class servlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer=response.getWriter();
		String name = request.getParameter("name");
		writer.println("用户名："+name+"<br/>");
		String password = request.getParameter("password");
		writer.println("密码："+password+"<br/>");
		String password1 = request.getParameter("password1");
		writer.println("密码确认："+password1+"<br/>");
		String sex = request.getParameter("sex");
		writer.println("性别："+sex+"<br/>");
		String []hobby = request.getParameterValues("hobby");
		for(String str : hobby) {
			writer.println("兴趣爱好: "+str+"<br/>");
		}
		String information = request.getParameter("information");
		writer.println("个人信息:  "+information+"<br/>");
	}
}

