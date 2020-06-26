<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/22
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>table</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='${pageContext.request.contextPath}/Jsp/chooseAlterFood.css'>
</head>
<body>
<center>
    <div class="Frame"><br><br><br>
        <a href="Manager_Alter_Food.action?Kind_Name=川菜&list=chuan_list&DB_Name=chuanfood"><div class="Food Food01"><font> 川 菜 </font></div></a>
        <a href="Manager_Alter_Food.action?Kind_Name=海鲜&list=sea_list&DB_Name=seafood"><div class="Food Food02"><font> 海 鲜 </font></div></a>
        <a href="Manager_Alter_Food.action?Kind_Name=甜点&list=sweet_list&DB_Name=sweetfood"><div class="Food Food03"><font> 甜 点 </font></div></a>
        <a href="Manager_Alter_Food.action?Kind_Name=酒水&list=beverage_list&DB_Name=beverage"><div class="Food Food04"><font> 酒 水 </font></div></a>
        <a href="Manager_Alter_Food.action?Kind_Name=主食&list=stable_list&DB_Name=stablefood"><div class="Food Food05"><font> 主 食 </font></div></a>
        <img class="image" src="${pageContext.request.contextPath}/Jsp/Pictures/temp03.jpg" alt="">
    </div>
</center>
</body>
</html>l