<%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/24
  Time: 10:08
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
<form action="hello" method="post">
    昵称：<input type="text" name="username" required/><br/>
    所在城市：<input type="text" name="city" required/><br>
    您所使用的开发语言：<br/>
    <input type="checkbox" name="language" value="Java"/>Java
    <input type="checkbox" name="language" value="C"/>C
    <input type="checkbox" name="language" value="C++"/>C++
    <input type="checkbox" name="language" value="PHP"/>PHP
    <input type="checkbox" name="language" value="ASP"/>ASP<br/>
    <input type="submit" value="提交"/>

</form>
</body>
</html>