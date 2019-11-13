<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2019/10/9
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>注册</title>
  </head>
  <body>
  <form action="/test_9_war_exploded/loginServlet" onsubmit="return checkpwd()">
    <table align="center">
      <tr align="center"><td>用户名：<input type="text" name="id" id="id"></td></tr>
      <tr align="center"><td>密码：<input type="password" name="pwd" id="pwd"></td></tr>
      <tr align="center"><td>确认密码：<input type="password" name="tpwd" id="tpwd"></td></tr>
      <tr align="center"><td><input type="submit" value="提交"><input type="reset" value="重置"></td></tr>
    </table>
  </form>

  </body>
</html>
<script type="text/javascript">
  function checkpwd() {
    var pwd = document.getElementById("pwd").value;
    var tpwd = document.getElementById("tpwd").value;

    if(pwd == ""){
      alert("请输入密码！");
      return false;
    }else if(pwd != "" && tpwd == ""){
      alert("请确认密码！");
      return false;
    }else{
      if (tpwd != pwd ){
        alert(pwd+tpwd+"两次输入的密码不同，请重新输入。。。");
        return false;
      }else{
        return true;
      }
    }

  }

</script>
