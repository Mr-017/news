<%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/22
  Time: 9:58
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

<form action="login" method="post">
    用户名<input type="text" name="user"/><br/>
    密码<input type="password" name="pwd"/><br/>
    <input type="submit" value="登录"/>
</form>
</body>
</html>