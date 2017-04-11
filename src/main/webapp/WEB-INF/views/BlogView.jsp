<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yuxia
  Date: 17-4-8
  Time: 下午1:46
  To change this template use File | Settings | File Templates.
--%>
<c:set var="contentPath" value="${pageContext.request.contextPath}"></c:set>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table class="table-view">
    <tr class="table-row-cell">
        <th class="table-row-cell">编号</th>
        <th class="table-row-cell">标题</th>
        <th class="table-row-cell">内容</th>
        <th class="table-row-cell">操作</th>
    </tr>

    <c:forEach items="${bloglist}" var="blog">
        <tr>
            <td class="table-row-cell">${blog.id}</td>
            <td class="table-row-cell">${blog.title}</td>
            <td class="table-row-cell">${blog.content}</td>
            <td class="table-row-cell"><a href="${contentPath}/blog.delete?id=${blog.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>

<p><a href="${contentPath}/blog.add">添加博客</a></p>
<p><a href="">管理用户</a></p>

</body>
</html>
