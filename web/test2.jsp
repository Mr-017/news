
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hisoft.news.javabean.NewsUser" %><%--
  Created by IntelliJ IDEA.
  Author: XiaoMing
  Date: 2021/6/24
  Time: 11:59
  Come on, boy
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:set var="variable" value="xiaoming" scope="page"/>
variable:${variable}
<br/>------------------out----------------<br/>
out:<c:out value="${variable}" default="default" /><br/>
out:<c:out value="${variable1}" default="default" />
<br/>-------------------remove----------------<br/>
remove:<c:remove var="variable" scope="page"/><br/>
removeOut:<c:out value="${variable}" default="已删"/>
<br/>-------------------if----------------<br/>
<c:set var="gender" scope="request" value="男"/>
<c:if test="${gender eq '男'}">
    我是男生
</c:if>
<br/>---------------------choose--------------<br/>
<%--<c:set var=""
<c:choose>
    <c:when test="${}"
</c:choose>--%>
<br/>---------------------foreach(list)--------------<br/>
<%
    NewsUser user = new NewsUser();
    List<NewsUser> list = new ArrayList<>();
    list.add(new NewsUser(11,"Stu11","1111"));
    list.add(new NewsUser(22,"Stu22","2222"));
    list.add(new NewsUser(33,"Stu33","3333"));
    request.setAttribute("users",list);
%>
<ul>
    <c:forEach items="${users}" var="user" varStatus="v">
        <li<c:if test="${v.index%2 eq 0}"> style="background-color:red"</c:if>>
            ${user.uid}&nbsp;&nbsp;${user.uname}&nbsp;&nbsp;${user.upwd}<br/>
        </li>

    </c:forEach>
</ul>

<br/>---------------------foreach(map)--------------<br/>
<%
    Map map = new HashMap();
    map.put("name","张三");
    map.put("pwd","123");
    map.put("gender","男");
    map.put("age","17");
    request.setAttribute("map",map);
%>
<c:forEach items="${map}" var="m">
    ${m.key}:${m.value}<br/>
</c:forEach>

</body>
</html>








