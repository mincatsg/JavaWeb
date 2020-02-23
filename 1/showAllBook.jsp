<%--
  Created by IntelliJ IDEA.
  User: Tn
  Date: 2019/11/13
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="VO.Book" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="javafx.scene.effect.SepiaTone" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>购物页面</title>
</head>
<body>欢迎购买图书<br>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    HashMap allBook=(HashMap) request.getSession().getAttribute("allBook");
%>
<table border="1">
    <tr>
        <td>书本名称</td>
        <td>书本价格</td>
        <td>购买</td>
    </tr>
    <%
        Set set=allBook.keySet();
        Iterator ite=set.iterator();
        while(ite.hasNext()){
            int bookno=(int)ite.next();
            Book book=(Book)allBook.get(bookno);
    %>
    <tr>
        <td><%=book.getBookname()%></td>
        <td><%=book.getBookprice()%></td>
        <td><a href="buyForm.jsp?bookno=<%=bookno%>" >购买</a></td>
    </tr>
    <%
        }
    %>
</table>
<a href="showCart.jsp">查看购物车</a>
</body>
</html>
