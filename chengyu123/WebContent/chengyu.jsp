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
	
	String s = (String)application.getAttribute("mess");
	if(s != null){
		out.print(s);
	}else{
		out.print("请输入第一个成语  <br>" );
	}

%>

<form action="chengyu2.jsp" method = "post">
	四字成语输入:<input type = "text" name ="message">
	<input type = "submit" value = "提交">
</form>
</body>
</html>