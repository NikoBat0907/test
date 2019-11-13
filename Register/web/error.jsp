<%--
  Created by IntelliJ IDEA.
  User: ftt
  Date: 2019/10/9
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录失败界面</title>
</head>
<body style="text-align: center">
<% String finalresult=(String)session.getAttribute("result");
    out.print(finalresult);
    %>
<a href="index.jsp">返回</a>
</body>
</html>
