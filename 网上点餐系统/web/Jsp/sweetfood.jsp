<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>甜 点</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='Food.css'>
</head>
<body>
<center>
    <div class="select" style="width: 600px;height: 85px;position: relative;top: 20px;">
        <form action="Key_find.action" method="post" class="selectForm" style="width: 100%;height: 100%;">
            <font style="font-size: 45px;font-family: '楷体';";>搜索:</font>
            <input class="select_input" name="key" type="text" placeholder="请输入菜名" style="font-size: 35px;border: 2px solid black; text-align: center; width: 350px;height: 60px;border-radius: 10px;-moz-box-shadow:0 0 5px black;-webkit-box-shadow:0 0 5px black;box-shadow:0 0 5px black;">
            <input type="submit" value="搜 索" style="width: 100px;height: 50px;border-radius: 10px;margin-left: 20px;font-size: 30px;">
        </form>
    </div>
</center><br>
<s:iterator value="#session.sweet_list">
    <div class="food">
        <img src="Pictures/Menue/<s:property value="foodname"></s:property>.jpg" class="imageFood">
        <div class="foodFontFrame">
            <center>
                <font class="foodFont"><s:property value="foodname"></s:property></font><br><hr>
            </center>
            <font class="money"><s:property value="price"></s:property> 元/份</font>
            <form action="Ordering_Menue.action?foodName=<s:property value="foodname"></s:property>&price=<s:property value="price"></s:property>" method="post">
                <div class="number">
                    <center>
                        <input name="add" type="button" value="+" class="changeNum add">
                        <input name="num" type="text" value="0" class="num">
                        <input name="reduce" type="button" value="-" class="changeNum reduce">
                    </center>
                </div>
                <input name="mark" type="text" placeholder="备注：例如辣度等" class="remark">
                <input type="submit" value="点菜" class="order">
            </form>
        </div>
    </div>
</s:iterator>
<script src='Food.js'></script>
</body>
</html>