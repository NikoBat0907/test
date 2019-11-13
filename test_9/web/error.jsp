<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2019/10/9
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册失败</title>
</head>
<body>
<%
    String datatime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
%>
<h2>注册失败。。。。。。。。。。。。。。。。</h2>
<hr color="red">
<p>当前时间为<%=datatime%></p>
</body>
</html>
