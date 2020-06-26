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
    <link rel='stylesheet' type='text/css' media='screen' href='addMenu.css'>
</head>
<body>
<center>
    <div class="Frame"><br>
        <form action="${pageContext.request.contextPath }/File_UploadAction.action" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td class="tableWidth"> 菜 名 </td>
                    <td class="tableWidth"> 价 格 </td>
                    <td class="tableWidth"> 上传图片 </td>
                </tr>
                <tr>
                    <td class="tableWidth2"><input type="text" class="Input" name="filename" placeholder="请输入菜名"></td>
                    <td class="tableWidth2"><input type="text" class="Input" name="price" placeholder="请输入价格"></td>
                    <td class="tableWidth2 table04"><input type="file" class="Input" name="file1"></td>
                </tr>

            </table><br><br>
            <input class="add" type="submit" value="添 加">
        </form>
    </div>
</center>
</body>
</html>
