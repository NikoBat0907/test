<%@ page import="com.sun.xml.internal.bind.v2.model.core.ID" %><%--
  Created by IntelliJ IDEA.
  User: ftt
  Date: 2019/10/9
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>检查用户注册界面</title>
</head>
<body>
    <%  String id=request.getParameter("ID");
        String password=request.getParameter("psw2");
        request.getSession().setAttribute("id",id);
        if(id==null||id.length()==0||password==null||password.length()==0){
            request.getSession().setAttribute("result","用户名或密码为空，注册失败！");
            request.getRequestDispatcher("error.jsp").forward(request, response); }
        else{
            if(!id.equals("abc") || !password.equals("123")){
                request.getSession().setAttribute("result","用户名或密码错误，注册失败！");
                request.getRequestDispatcher("error.jsp").forward(request, response); }
            else{
                out.print("注册成功！");
                response.sendRedirect("success.jsp");
        }}%>
</body>
</html>
