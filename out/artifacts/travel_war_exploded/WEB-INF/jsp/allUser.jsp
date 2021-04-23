<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>用户信息 —— 显示所有用户</small>
                </h1>
            </div>
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
        <div style="text-align: right" class="col-md-4">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/">主页</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>联系方式</th>
                    <th>家庭住址</th>
                    <th>信息咨询</th>
                    <th>是否解决</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.age}</td>
                        <td>${user.number}</td>
                        <td>${user.address}</td>
                        <td>${user.counsel}</td>
                        <td>${user.counselOk}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user/deleteUser?id=${user.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>