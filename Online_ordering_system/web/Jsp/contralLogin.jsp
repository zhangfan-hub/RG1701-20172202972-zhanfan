<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='contralLogin.css'>
    
</head>
<body>
    <center>
        <div class="Frame"><br>
            <font>管 &nbsp;&nbsp;理 &nbsp;&nbsp;员 &nbsp;&nbsp;登 &nbsp;&nbsp;陆</font><br><br><hr><br><br>
            <form action="Manager_Judge.action" method="post">
                <input class="Input userName" type="text" name="manager.managername" placeholder="请输入用户名"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>managername</s:param></s:fielderror></font>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>manager_judge</s:param></s:fielderror></font>
                <input class="Input pwd" type="password" name="manager.password" placeholder="请 输 入 密 码"><br><br>
                <font style="font-size: 20px;color: red"><s:fielderror><s:param>password</s:param></s:fielderror></font>
                <input class="sub table" type="submit" value="登 陆">&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="sub cancal" type="button" value="取 消"><br>
            </form>
        </div>
    </center>
    <script src='contralLogin.js'></script>
</body>
</html> 