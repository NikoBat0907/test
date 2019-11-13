<%--
  Created by IntelliJ IDEA.
  User: 10175
  Date: 2019/9/24
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/jQuery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/jQuery/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <title>登录页面</title>
    <style type="text/css">
        h1{text-align: center}
        body{background:url("${pageContext.request.contextPath }/images/1.png");
            background-size:100% 100%;
        }
    </style>
    <script>
        $().ready(function () {
            $("#form1").validate({
                errorPlacement:function (error,element) {
                    error.appendTo(element.parent("div").next("div"))
                },
                rules:{
                    id:"required",
                    password:"required"
                },
                messages:{
                    id:"登录ID不能为空",
                    password:"登录密码不能为空"
                }
            })
        })
        if ("${info}"=="false"){
            alert("登录失败");
        }
    </script>
</head>
<body>
<br>
    <br>
    <br>
    <div class="container">
        <form action="${pageContext.request.contextPath }/LoginServlet" method="post" id="form1" class="form-horizontal" role="form">
            <div class="form-group ">
                <label class="control-label col-md-8" for="id">登录ID</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="id" name="id" placeholder="请输入登录ID" />
                </div>
                <div class="col-md-2" style="color: red"></div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-8" for="password">密码</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="password" name="password" placeholder="请输入登录密码" />
                </div>
                <div class="col-md-2" style="color: red"></div>
            </div>
            <div class="form-group">
                <div class="col-md-8"></div>
                <div class="col-md-1">
                    <input class="form-control btn-info" type="submit"  value="登录">
                </div>
                <div class="col-md-1">
                <input class="form-control btn-warning" type="reset" value="重置">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <a href="${pageContext.request.contextPath }/Login/Register.jsp">
                    <button type="button" class="btn btn-primary form-control">用户注册</button>
                    </a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
