<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='alterMyFood.css'>

</head>
<body>
<center>
    <div class="Frame"><br>
        <form>
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
                        <td class="tableWidth2"><input class="alter" type="text" value="<s:property value="num"></s:property>"></td>
                        <td class="tableWidth2"><input class="alter" type="text" value="<s:property value="mark"></s:property>"></td>
                    </tr>
                </s:iterator>
                <input class="submit" type="submit" value="确认修改">
            </table>
        </form>
    </div>
</center>
</body>
</html>