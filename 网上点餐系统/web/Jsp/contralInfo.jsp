<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/21
  Time: 10:06
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

</head>
<body>
<center>
    <div class="Frame">
        <font>请 输 入 密 码 验 证</font><br><br>
        <form action="Manager_Old_Password" method="post">
            <input class="pwd" type="password" name="old_password" placeholder="旧 密 码"><br><br><br>
            <font style="font-size: 20px; color: red"><s:fielderror><s:param>old_password_judge</s:param></s:fielderror></font>
            <input class="botton" type="submit" value="验 证">
        </form>
    </div>
</center>
<script src='contralInfo.js'></script>
</body>
</html>
