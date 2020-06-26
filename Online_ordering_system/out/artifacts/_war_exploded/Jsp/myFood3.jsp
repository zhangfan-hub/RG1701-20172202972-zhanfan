<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/25
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='myFood.css'>

</head>
<body>
<center>
    <div class="Frame"><br>
        <table>
            <tr>
                <td class="tableWidth"> 菜品 </td>
                <td class="tableWidth"> 价格 </td>
                <td class="tableWidth"> 数量 </td>
                <td class="tableWidth"> 备注 </td>
            </tr>
            <s:iterator value="#session.tablefood_list">
                <tr>
                    <td class="tableWidth2"> <s:property value="foodname"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="price"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="num"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="mark"></s:property> </td>
                </tr>
            </s:iterator>
            <tr>
                <td class="tableWidth">总价:</td></td>
                <td class="tableWidth"><s:property value="#session.Allprice"></s:property></td>
                <td></td>
                <td></td>
            </tr>
        </table><br><br>
        <a href="Write_Txt.action"><button class="order">导出账单</button></a>
    </div>
</center>
</body>
</html>