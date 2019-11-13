<%--
  Created by IntelliJ IDEA.
  User: ftt
  Date: 2019/10/9
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>用户注册界面</title>
  <script type="text/javascript">
    function checkPassword(){
      var psw1=document.getElementById("psw1").value;
      var psw2=document.getElementById("psw2").value;
      if(psw1===''||psw2===''){
        alert("密码不能为空!");
        return false;
      }
        if(psw1!=psw2){
          alert("两次密码输入不一致！");
          return false;
      }
         else{
          return true;
      }
    }
  </script>
</head>
<body>
<br><br><br>
<div style="text-align: center">
<h3>用户注册</h3>
<form method="post" action="checkregister.jsp" onsubmit="return checkPassword()">
  <table border ="1" align="center" style="text-align: center">
    <tr>
      <td>用户名：</td>
      <td><input type="text" name="ID"></td></tr>
    <tr>
      <td>密码：</td>
      <td><input type="password" name="psw1" id="psw1"></td></tr>
    <tr>
      <td>再次输入：</td>
      <td><input type="password" name="psw2" id="psw2">
        </td></tr>
    <tr align="center">
      <td></td>
      <td align="center"><input type="submit" value="提交注册">&nbsp;
            <input type="reset" value="重置"></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
