<%--
  Created by IntelliJ IDEA.
  User: ly
  Date: 2020/2/27
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:forward page="/pages/main.jsp"></jsp:forward>
<a href="${pageContext.request.contextPath}/Product/findAll.do">查询所有产品信息</a>
</body>
</html>