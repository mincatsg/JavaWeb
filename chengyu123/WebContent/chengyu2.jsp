<%@page import="java.net.ResponseCache"%>
<%@page import ="javax.servlet.ServletException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成语接龙</title>
</head>
<body>


<%
	request.setCharacterEncoding("utf-8");
	String text = request.getParameter("message");
	
 	if(text.length() == 4){	
 		
 		String flag = (String) application.getAttribute("flag");
 		if(flag == null){
 	 		String end = text.charAt(3)+"";
 	 		application.setAttribute("end", end);
 	 		sendMessage(text);
 	 		out.write("输入成功");
 	 	 	response.setHeader("refresh", "1;url=chengyu.jsp");
 	 	 	session.setAttribute("text", "text");

 			flag = 1+"";
 			application.setAttribute("flag", flag);
 		} else{
 			String s2 =  (String)application.getAttribute("end");
 			String c = text.charAt(0)+"";
 			
 			if(c.equals(s2)){
 	 			sendMessage(text);
 	 			String end = text.charAt(3)+"";
 	 	 		application.setAttribute("end", end);
 	 			
 	 	 		out.write("输入成功");
 	 	 	 	response.setHeader("refresh", "1;url=chengyu.jsp");
 	 	 	 	session.setAttribute("text", "text");					
 	 		}else{
 	 			response.sendRedirect("chengyu.jsp");
 	 		}
 		}
 		 			
 	} else{
 		out.print("test4");
		response.sendRedirect("chengyu.jsp"); 		
 	}
	
%>

<%!
	String mess ="";
	ServletContext application;
	void sendMessage(String s){
		application = getServletContext();
		mess =mess + s + " - ";
		application.setAttribute("mess", mess);
	}
%>

</body>
</html>