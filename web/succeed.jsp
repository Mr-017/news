<%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/22
  Time: 10:35
  Come on, boy
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
</head>
<body>
<h1>succeed!</h1>
</body>
</html>