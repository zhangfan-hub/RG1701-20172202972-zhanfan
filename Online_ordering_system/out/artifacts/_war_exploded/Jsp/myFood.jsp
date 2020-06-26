<%@ taglib prefix="s" uri="/struts-tags" %>
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
                    <td class="tableWidth"> 菜名 </td>
                    <td class="tableWidth"> 价格 </td>
                    <td class="tableWidth"> 数量 </td>
                    <td class="tableWidth"> 备注 </td>
                    <td class="tableWidth"> 删除 </td>
                    <td class="tableWidth"> 修改 </td>
                </tr>
                <s:iterator value="#session.tablefood_list">
                    <tr>
                        <td class="tableWidth2"> <s:property value="foodname"></s:property> </td>
                        <td class="tableWidth2"> <s:property value="price"></s:property> </td>
                        <td class="tableWidth2"> <s:property value="num"></s:property> </td>
                        <td class="tableWidth2"> <s:property value="mark"></s:property> </td>
                        <td class="tableWidth2"> <a href="Delete_myFood.action?foodname=<s:property value="foodname"></s:property>"> 删除 </a></td>
                        <td class="tableWidth2"> <a href="Update_myFood.jsp?foodname=<s:property value="foodname"></s:property>"> 修改 </a></td>
                    </tr>
                </s:iterator>
                <tr>
                    <td class="tableWidth">总价:</td></td>
                    <td class="tableWidth"><s:property value="#session.Allprice"></s:property></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a href="Insert_Allprice.action"><button class="submit">确认订单</button></a>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</body>
</html>