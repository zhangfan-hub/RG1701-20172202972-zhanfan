<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/21
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>修改信息</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='contralInfo.css'>
    <script type="text/javascript">
        function checkUserInfo() {
            if (document.myform.userName.value === ""){
                alert("用户名不能为空");
                return false;
            }
            if (document.myform.pwd.value === ""){
                alert("密码不能为空");
                return false;
            }
            if (document.myform.validatepwd.value !== document.myform.pwd.value) {
                alert("两次输入的密码不一致");
                return false;
            }
        }
    </script>
</head>
<body>
<center>
    <div class="Frame" style="height: 400px;">
        <font>设 置 新 信 息</font><br><br>
        <form name="myform" action="Manager_Update_Info" onsubmit="return checkUserInfo()" method="post">
            <input name="managername" class="pwd" type="text" placeholder="账户名称"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>managername</s:param></s:fielderror></font>
            <input name="password" class="pwd" type="password" placeholder="新 密 码"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>password</s:param></s:fielderror></font>
            <input name="password2" class="pwd" type="password" placeholder="密码确认"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>password2</s:param></s:fielderror></font>
            <input class="botton" type="submit" value="更 改">
        </form>
    </div>
</center>
</body>
</html>
