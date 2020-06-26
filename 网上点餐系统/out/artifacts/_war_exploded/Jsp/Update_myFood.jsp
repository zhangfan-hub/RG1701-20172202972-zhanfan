<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='Update_myFood.css'>

</head>
<body>
<%
    String foodname = request.getParameter("foodname");
%>
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
                    <s:if test="foodname.equals(#parameters.foodname[0])">
                <form action="Update_myFood.action?foodname=<s:property value="foodname"></s:property>" method="post">
                    <tr>
                        <td class="tableWidth2"> <s:property value="foodname"></s:property> </td>
                        <td class="tableWidth2"> <s:property value="price"></s:property> </td>
                        <td class="tableWidth2"><input class="alter" name="num" type="text" value="<s:property value="num"></s:property>"></td>
                        <td class="tableWidth2"><input class="alter" name="mark" type="text" value="<s:property value="mark"></s:property>"></td>
                    </tr>
                    <input class="submit" type="submit" value="确认修改">
                </form>
                    </s:if>
                </s:iterator>

            </table>
    </div>
</center>
</body>
</html>