<%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/23
  Time: 12:07
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
<%
    request.setAttribute("user", "username");
%>

el: ${user}
<br/>
小脚本:
<%
    String user = (String) request.getAttribute("user");
%>
<%=user%>
</body>
</html>