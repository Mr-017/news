<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>File控件</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
<form action="doupload.jsp" enctype="multipart/form-data" method="post">
    <p>姓名：<input type="text" name="user"></p>
    <p>选择图片：<input type="file" name="nfile"></p>
    <input type="checkbox" name="hib" value="111">
    <input type="checkbox" name="hib" value="112">
    <input type="checkbox" name="hib" value="113">
    <p><input type="submit" value="提交"></p>
</form>
</body>
</html>
