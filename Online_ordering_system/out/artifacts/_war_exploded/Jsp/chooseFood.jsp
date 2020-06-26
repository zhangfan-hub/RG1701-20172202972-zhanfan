<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>chooseFood</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='chooseFood.css'>
</head>
<body>
    <center>
        <div class="Frame">
            <div class="chooseList">
                <div class="choose"><font>川 菜</font></div>
                <div class="choose"><font>海 鲜</font></div>
                <div class="choose"><font>甜 点</font></div>
                <div class="choose"><font>酒 水</font></div>
                <div class="choose"><font>主 食</font></div><br>
                <button class="button myFood"><font class="buttonFont">我的菜单</font></button><br><br>
                <button class="button myInfo"><font class="buttonFont">修改信息</font></button><br><br>
                <button class="button out"><font class="buttonFont">退出界面</font></button>
            </div>
            <div class="show">
                <iframe class="showFrame" src="first.jsp">

                </iframe>
            </div>
            
        </div>
    </center>
    <script src='chooseFood.js'></script>
</body>
</html> 