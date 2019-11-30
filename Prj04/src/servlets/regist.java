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
@WebServlet("/regist")
public class regist extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		for(String x : hobby) {
			writer.println("兴趣爱好: "+x+"<br/>");
		}
		String information = request.getParameter("information");
		writer.println("个人信息:  "+information+"<br/>");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
}