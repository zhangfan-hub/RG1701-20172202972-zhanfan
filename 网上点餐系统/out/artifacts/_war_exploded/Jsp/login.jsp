<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title></title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='login.css'>
</head>
<script type="text/javascript">
    function checkUserInfo() {
        if (document.myform.username.value=="") {
            alert("用户名不能为空");
            return false;
        }
        if (document.myform.password.value==""){
            alert("密码不能为空");
            return false;
        }
    }
</script>
<body>
    <center>
        <div class="Frame"><br>
            <font>登 &nbsp;&nbsp;&nbsp;陆</font><br><br><hr><br><br>
            <form name="myform" action="UserLogin.action" method="post" onsubmit="return checkUserInfo()">
                <input class="Input userName" type="text" name="username" placeholder="请输入用户名"><br><br>
                <font style="font-size: 20px; color: red"><s:fielderror><s:param>judge</s:param></s:fielderror></font>
                <input class="Input pwd" type="password" name="password" placeholder="请 输 入 密 码"><br><br>
                <input class="sub table" type="submit" value="登 陆">&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="sub cancal" type="button" value="取 消"><br>
            </form>
        </div>
    </center>
    <script src='login.js'></script>
</body>
</html>