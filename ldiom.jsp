<%@page import="com.sun.swing.internal.plaf.metal.resources.metal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2> 四字成语接龙  </h2>
 <%
 request.setCharacterEncoding("UTF-8");
 response.setCharacterEncoding("UTF-8");
 String s =(String)application.getAttribute("message");
 if(s != null){
	 out.println(s);
 }else{
	 out.println("还没有词语，请你从龙头开始。<br> ");
 }
 %>
 <form action= "sss.jsp" method= "post"> 
    四字成语输入 :<input type= "text" name= "mes" /> <br>
           <input type = "submit" value= "提交"/>
</form>
</body>
</html>