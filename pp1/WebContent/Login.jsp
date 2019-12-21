<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    Cookie []cookies=request.getCookies();
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("flogin")&&cookies[i].getValue().equals("yes"))
            response.sendRedirect("hello.jsp");
    }
%>
<form action="hello" method="post">
    用户名：<input type="text" name="name" ><br>
    密码：  <input type="password" name="password"><br>
    免登录：<input type="radio" name="flogin" value="yes">是
            <input type="radio" name="flogin" value="no">否<br>
            <input type="submit" value="确定">
</form>
</body>
</html>