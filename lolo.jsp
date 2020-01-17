<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 int num = 0;
 if(application.getAttribute("num") != null){
	 num = (Integer)application.getAttribute("num");
 }
   num++;
   out.println("当前网易访问次数: " +num);
   application.setAttribute("num", num);
 %>
</body>
</html>