<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
 <%!
  String message = "";
  ServletContext application;
  synchronized void sendMessage(String s){
	  application = getServletContext();
	  message = message + s + "->";
	  application.setAttribute("message", message);
  }
 
 %>
 
 <%
 request.setCharacterEncoding("UTF-8");
 response.setCharacterEncoding("UTF-8");
   String content = request.getParameter("mes");
   sendMessage(content);
   out.print("你的四字成语" +content+ "已经提交，3秒后返回成语界面，继续接力");
   response.setHeader("refresh", "3;url = ldiom.jsp");
 %>
</body>
</html>