<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Register</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='register.css'>
</head>

<body>
    <center>
        <div class="Frame">
            <form action="UserJudge.action" method="post">
                <br><font>注 &nbsp;&nbsp;&nbsp;册</font><br><br><hr><br><br>
                <input class="Input" name="user.username" type="text" placeholder="请输入姓名"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>username</s:param></s:fielderror></font>
                <input class="Input" name="user.password" type="password" placeholder="请输入密码"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>password</s:param></s:fielderror></font>
                <input class="Input" name="user.password2" type="password" placeholder="请校验密码"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>password2</s:param></s:fielderror></font>
                <input class="Input" name="user.phone" type="text" placeholder="联 系 方 式"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>phone</s:param></s:fielderror></font>
                <input class="sub" name="sub" type="submit" value="注 册">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="sub cancal" name="cancal" type="button" value="取 消">
            </form>
        </div>
    </center>
    <script src='register.js'></script>
</body>
</html>