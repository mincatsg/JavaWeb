<%@ page import="org.apache.catalina.Session" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="VO.Book" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Tn
  Date: 2019/11/13
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>����ҳ��</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    HashMap allBook = (HashMap) request.getSession().getAttribute("allBook");
        int bookno=Integer.parseInt(request.getParameter("bookno"));
        Book book = (Book) allBook.get(bookno);
%>
��ӭ����
<form action="AddServlet" method="post">
    �鱾�۸�<%=book.getBookname()%><br>
    ����������<input type="text" name="booknumber">
    <input type="submit" value="����">
    <input type="hidden" name="bookno" value=<%=book.getBookno()%>>
    <input type="hidden" name="bookname" value=<%=book.getBookname()%>>
    <input type="hidden" name="bookprice" value=<%=book.getBookprice()%>>
</form>
<a href="showCart.jsp">�ҵĹ��ﳵ</a>
</body>
</html>
