<%--
  Created by IntelliJ IDEA.
  User: 20977
  Date: 2019/12/25
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>aboutUs</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='aboutUs2.css'>
</head>
<body>
<img class="image" src="Pictures/点餐系统.png">
<div class="introduce">
        <pre>
            <font class="person">对于用户：</font>

                    本系统用于餐厅点餐，顾客可以通过登陆本系统，进行餐桌位置的选择，并进行选取心仪的菜品，若想直接查询某一菜品是否存在，可以通过输入框搜索进行查询。
                若对自己已选择的菜品有所修改，可以通过查询我的订单对订单进行增删改查。
                    最后在确定自己的订单无误后将订单提交给后台，餐厅会按照订单进行上菜。
                    用户可以将自己的信息进行修改，更改用户名、密码、联系方式。

            <font class="person">对于管理员：</font>

                    本系统还添加有管理员功能界面，管理员可以对顾客所提交的订单进行查询，传达客人的需求，将菜品做出来。同时添加了修改菜品功能，管理员可以修改菜品的价格、
                删除菜品、添加新的菜品，实现菜品的实时更新。

                    管理员可以查询当天的营业额，统计收入。

                    添加了点击量统计功能，统计出菜品的销售情况，以此作为凭据对菜品进行相应的增删改操作。

                    同时管理员也可以修改个人信息，但是首先要进行旧密码验证,验证是否是本人操作，才能更改信息。

            <font class="person">使用的主要技术：</font>
                    前端技术：
                        web前端开发技术，使用html、css设计页面样式，使用js实现跳转功能使页面动态化。

                    后端技术：
                        数据库操作读取数据，输入校验、文件的上传、页面间的数据传递与跳转、struts标签的使用，使用java进行数据的计算。
        </pre>
</div>
<script src='aboutUs.js'></script>
</body>
</html>
