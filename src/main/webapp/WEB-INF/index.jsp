<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理系统</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
        }

        #sidebar {
            width: 15%;
            background-color: #4c7899;
            padding: 20px;
            color: #fff;
        }

        #content {
            flex: 1;
            padding: 20px;
            background-color: #fff;
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 24px;
            margin: 0;
            padding: 10px 0;
            background-color: #335577;
            border-radius: 5px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            margin-bottom: 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #d3d3d3;
        }
    </style>
</head>

<body>
<div id="sidebar">
    <header>
        <h2>管理系统</h2>
    </header>
    <nav>
        <ul>
            <li><a href="<%=basePath%>/bk/query" target="content">图书管理</a></li>
            <%--            <li><a href="<%=basePath%>/lab/query" target="content">实验室管理</a></li>--%>
            <%--            <li><a href="<%=basePath%>/equipment/query" target="content">设备管理</a></li>--%>
            <%--            <li><a href="<%=basePath%>/material/query" target="content">材料管理</a></li>--%>
            <%--            <li><a href="<%=basePath%>/schedule/query" target="content">日程管理</a></li>--%>
        </ul>
    </nav>
</div>
<div id="content">
    <iframe name="content" width="100%" height="100%" frameborder="0"></iframe>
</div>
</body>

</html>