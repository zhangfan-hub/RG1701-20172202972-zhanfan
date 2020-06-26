<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/24
  Time: 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>修改用户信息</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='userInfo.css'>
</head>

<body>
<center>
    <div class="Frame">
        <form action="User_Info_Update.action" method="post">
            <br><font>修 改 用 户 信 息</font><br><br><hr><br><br>
            <input class="Input" name="user.username" type="text" placeholder="请输入姓名"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>username</s:param></s:fielderror></font>
            <input class="Input" name="user.password" type="password" placeholder="请输入新密码"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>password</s:param></s:fielderror></font>
            <input class="Input" name="user.password2" type="password" placeholder="请确认新密码"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>password2</s:param></s:fielderror></font>
            <input class="Input" name="user.phone" type="text" placeholder="联 系 方 式"><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>phone</s:param></s:fielderror></font>
            <input class="sub" type="submit" value="修 改">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
    </div>
</center>
</body>
</html>