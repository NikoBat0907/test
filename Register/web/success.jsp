<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: ftt
  Date: 2019/10/9
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功界面</title>
</head>
<body style="text-align: center">
<%String id=(String)session.getAttribute("id");%>
    <h3><%=id%>,恭喜您登陆成功！</h3>
    <%
        Date d=new Date();
        SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now=s.format(d);
    %>
    当前时间：<%=now%>
    <a href="index.jsp">返回</a>
</body>
</html>
