<%--
  Created by IntelliJ IDEA.
  User: yuxia
  Date: 17-4-6
  Time: 下午9:46
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<c:set var="contentPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    Hello world!
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="${contentPath}/blog">blog</a>
<a href="${contentPath}/user">user</a>
</body>
</html>
