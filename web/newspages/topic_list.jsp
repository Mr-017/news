<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.hisoft.news.javabean.Topic" %>
<%@ page import="java.util.List" %>
<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="controll_util.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>编辑主题--管理后台</title>
    <script type="text/javascript">
        function check() {
            var tname = document.getElementById("tname");

            if (tname.value == "") {
                alert("请输入主题名称！！");
                tname.focus();
                return false;
            }
            return true;
        }
    </script>
    <link href="css/admin.css" rel="stylesheet" type="text/css"/>
    <script src="../js/jquery-1.12.4.js" type="text/javascript"></script>
</head>
<body>
<div id="main">
    <div>
        <%--	    <iframe src="console_element/top.html" scrolling="no" frameborder="0" width="947px" height="180px"></iframe>--%>
        <%@ include file="console_element/top.html" %>
    </div>
    <div id="opt_list">
        <%--      	<iframe src="console_element/left.html" scrolling="no" frameborder="0" width="130px"></iframe>--%>
        <%@ include file="console_element/left.html" %>
    </div>
    <div id="opt_area">
        <ul class="classlist">

<%--            <c:forEach items="${applicationScope.topics}" var="topic" varStatus="t">
                <li>${topic.tname}
                    &lt;%&ndash;${topic.tid}&nbsp;&nbsp;${topic.tname}&nbsp;&nbsp;${topic.upwd}<br/>&ndash;%&gt;
                    &nbsp;&nbsp;&nbsp;&nbsp; <a href="newspages/topic_modify.jsp?tid=${topic.tid}&tname=${topic.tname}">修改</a>
                    &nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:;" onclick="del(${topic.tid})">删除</a>
                </li>
            </c:forEach>--%>

        </ul>
    </div>
    <%--	  <iframe src="console_element/bottom.html" scrolling="no" frameborder="0" width="947px" height="190px"></iframe>--%>
    <%@include file="console_element/bottom.html" %>
</div>
<script type="text/javascript">
	function del(tid) {
        if (confirm("你确定要删除吗？")){
            location.href="topic?action=del&tid="+tid;
        }
    }
	$(function () {
	    $.ajax({
            url:"topic",
            type:"get",
            data:"action=list",
            dataType:"json",
            success:function (result) {
                var $ul = $("ul[class=classlist]");
                for (var i = 0; i<result.length;i++){
                    var $li = $("<li>"+result[i].tname+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='newspages/topic_modify.jsp?tid="+result[i].tid+"&tname="+result[i].tname+"'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:;' onclick='del("+result[i].tid+")'>删除</a>" +"\n" +
                        "</li>")
                    // var $li = $("<li>"+result[i].tname+"&nbsp;&nbsp;&nbsp;&nbsp; <a href='newspages/topic_modify.jsp?tid=result[i].tid&tname=result[i].tname'>修改" +
                    //     "</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href='javascript:;' onclick='del(result[i].tid)'>删除</a></li>");
                    $ul.append($li);
                }
            }
        })
    })
</script>
</body>
</html>








