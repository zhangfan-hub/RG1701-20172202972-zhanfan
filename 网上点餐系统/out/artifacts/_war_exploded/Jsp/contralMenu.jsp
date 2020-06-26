<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>contralMenu</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='contralMenu.css'>
</head>
<body>
    <center>
        <div class="Frame">
            <div class="chooseList">
                <div class="choose"><font>查询订单</font></div>
                <div class="choose"><font>修改菜品</font></div>
                <div class="choose"><font>餐厅收入</font></div>
                <div class="choose"><font>点击排名</font></div><br>
                <button class="button myInfo"><font class="buttonFont">修改信息</font></button><br><br>
                <button class="button out"><font class="buttonFont">退出界面</font></button>
            </div>
            <div class="show">
                <iframe class="showFrame" src="first02.jsp">

                </iframe>
            </div>
            
        </div>
    </center>
    <script src='contralMenu.js'></script>
</body>
</html>