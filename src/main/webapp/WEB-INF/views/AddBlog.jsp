<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yuxia
  Date: 17-4-8
  Time: 下午2:16
  To change this template use File | Settings | File Templates.
--%>
<c:set var="contentPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${contentPath}/blog.add" method="post">
    <div>blog title:   <input type="text" name = "title" value="" placeholder="请输入标题"></div>
    <div>blog content:   <input type="text" name="content" value="" placeholder="请输入内容"></div>
    <input type="submit" value="提交">
</form>
</body>
</html>
