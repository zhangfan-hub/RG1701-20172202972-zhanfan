<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/20
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='${pageContext.request.contextPath}/Jsp/alterMenu.css'>
</head>
<body>
<center>
    <div class="Frame"><br>
        <table>
            <tr>
                <td class="tableWidth"> 菜品种类 </td>
                <td class="tableWidth"> 菜名 </td>
                <td class="tableWidth"> 价格 </td>
                <td class="tableWidth"> 删除 </td>
                <td class="tableWidth"> 修改 </td>
            </tr>
            <s:iterator value="#session.Update_list">
                <tr>
                    <td class="tableWidth2"> <s:property value="#session.Kind_Name"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="foodname"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="price"></s:property> </td>
                    <td class="tableWidth2"><a href="Manager_Menu_Delete.action?foodname=<s:property value="foodname"></s:property>"> 删除 </a></td>
                    <td class="tableWidth2"><a href="updateMyFood.jsp?foodname=<s:property value="foodname"></s:property>"> 修改 </a></td>
                </tr>
            </s:iterator>
        </table>
        <a href="addMenu.jsp"><button class="add"> 添加菜品 </button></a>
    </div>
</center>
<script src='alterMenu.js'></script>
</body>
</html>
