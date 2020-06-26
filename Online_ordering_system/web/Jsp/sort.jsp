<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/25
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        *{
            margin: 0;
            padding: 0;
            outline-style: none;
            user-select: none;
            box-sizing: border-box;
        }
        html,body{
            width: 100%;
            height: 100%;
        }
        body{
            background-image: url("Pictures/caption3.jpg");
            background-size: 100%;
        }
        .Frame{
            position: relative;
            top: 2px;
            width: 45%;
            height:auto !important;
            height:700px;
            min-height:700px;
            border: 1px solid black;
            border-radius: 20px;
            background: white;
            -moz-box-shadow:0 0 30px black;
            -webkit-box-shadow:0 0 30px black;
            box-shadow:0 0 30px black;
            background-image: url("Pictures/temp01.jpg");
            background-size: 100%;
        }
        .tableWidth{
            width: 200px;
            font-size: 30px;
            border-bottom: 5px solid black;
            text-align: center;
        }
        .tableWidth2{
            width: 100px;
            font-size: 25px;
            text-align: center;
        }
    </style>

</head>
<body>
<center>
    <div class="Frame"><br>
        <table>
            <tr>
                <td class="tableWidth"> 菜 名 </td>
                <td class="tableWidth"> 点击量 </td>

            </tr>
            <s:iterator value="#session.menu_sort_list">
                <tr>
                    <td class="tableWidth2"> <s:property value="foodname"></s:property> </td>
                    <td class="tableWidth2"> <s:property value="counts"></s:property> </td>
                </tr>
            </s:iterator>
        </table>
    </div>
</center>
</body>
</html>