<%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/24
  Time: 10:20
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
    您填写的内容是：<br/>
    昵称：${user.username}<br/>
    所在城市：${user.city}<br/>
    使用的开发语言有：
    ${user.language[0]}  ${user.language[1]}  ${user.language[2]}  ${user.language[3]}  ${user.language[4]}<br/>

    您填写的内容是：<br/>
    昵称：${param.username}<br/>
    所在城市：${param.city}<br/>
    使用的开发语言有：${paramValues.language[0] } ${paramValues.language[1] }
    ${paramValues.language[2] }${paramValues.language[3] }
    ${paramValues.language[4] }

</body>
</html>