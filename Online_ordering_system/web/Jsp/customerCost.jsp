<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/20
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='customerCost.css'>
</head>
<body>
<center>
    <div class="Frame"><br>
        <table>
            <tr>
                <td class="tableWidth"> 桌号 </td>
                <td class="tableWidth"> 消费金额 </td>
                <td class="tableWidth"> 消费时间 </td>
            </tr>
            <s:iterator value="#session.cust_list">
                <tr>
                    <td class="tableWidth2"> <s:property value="tableID"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="money"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="Get_date"></s:property> </td>
                </tr>
            </s:iterator>
            <tr>
                <td class="tableWidth"> 总收入： </td>
                <td class="tableWidth"> ￥<s:property value="#session.Allmoney"></s:property> </td>
            </tr>
        </table>
    </div>
</center>
</body>
</html>
