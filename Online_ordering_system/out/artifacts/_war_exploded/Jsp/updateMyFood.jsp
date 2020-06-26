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
    <link rel='stylesheet' type='text/css' media='screen' href='updateMyFood.css'>
    <script type="text/javascript">
        function checkUserInfo() {
            if (document.myform.foodname.value=="") {
                alert("菜名不能为空");
                return false;
            }
            if (document.myform.price.value==""){
                alert("价格不能为空");
                return false;
            }
        }
    </script>
</head>
<%
    String foodname = request.getParameter("foodName");
%>
<body>
<center>
    <div class="Frame"><br>
        <table>
            <tr>
                <td class="tableWidth"> 菜名 </td>
                <td class="tableWidth"> 价格 </td>
            </tr>
            <form name="myform" onsubmit="checkUserInfo()" action="Manager_Menu_Update.action" method="post">
                <s:iterator value="#session.Update_list">
                    <s:if test="foodname.equals(#parameters.foodname[0])">
                        <tr>
                            <td class="tableWidth"><input type="text" name="foodname" class="Input" value="<s:property value="foodname"></s:property>" readonly="readonly" placeholder="请输入菜名"></td>
                            <td class="tableWidth"><input type="text" name="price" class="Input" value="<s:property value="price"></s:property>" placeholder="请输入价格"></td>
                        </tr>
                    </s:if>
                </s:iterator>
                <input type="submit" value="确认修改" class="submit">
            </form>
        </table>
    </div>
</center>
</body>
</html>
