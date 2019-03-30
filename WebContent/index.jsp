<%--
  Created by IntelliJ IDEA.
  User: 恩友
  Date: 2019/3/30
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>测试</title>
</head>
<body>
<h1> url="<%=basePath%></>
</body>
</html>
