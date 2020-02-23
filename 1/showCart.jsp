<%@ page import="org.apache.catalina.Session" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="VO.Book" %><%--
  Created by IntelliJ IDEA.
  User: Tn
  Date: 2019/11/13
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车</title>
</head>
<body>
<table>
    <tr>
        <td>书名</td>
        <td>价格</td>
        <td>数量</td>
        <td>删除</td>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HashMap books=(HashMap)session.getAttribute("mybook");
        Set set=books.keySet();
        Iterator ite=set.iterator();
        while (ite.hasNext()){
            int bookno=(int)ite.next();
            Book book=(Book)books.get(bookno);
            if(book.getBooknumber()!=0){
    %>
    <tr>
        <td><%=book.getBookname()%></td>
        <td><%=book.getBookprice()%></td>
        <td><%=book.getBooknumber()%></td>
        <td><a href="RemoveServlet?bookno=<%=bookno%>">删除</a> </td>
    </tr>
    <%
            }
        }
    %>
</table>
总额：<%=request.getSession().getAttribute("money")%>
<a href="showAllBook.jsp">返回购物页面</a>
</body>
</html>
