<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>景点信息列表</title>
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
                    <small>景点信息 —— 显示所有景点</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/attractions/toAddAttractions">新增景点</a>
            </div>
            <div class="col-md-4"></div>
            <div style="text-align: right" class="col-md-4">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/">主页</a>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>景点id</th>
                    <th>名称</th>
                    <th>地点</th>
                    <th>开放时间</th>
                    <th>关闭时间</th>
                    <th>票价</th>
                    <th>是否优惠</th>
                    <th>优惠信息</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="attractions" items="${requestScope.get('attractions')}">
                    <tr>
                        <td>${attractions.attractionsId}</td>
                        <td>${attractions.attractionsName}</td>
                        <td>${attractions.attractionsAddress}</td>
                        <td>${attractions.openTime}</td>
                        <td>${attractions.closeTime}</td>
                        <td>${attractions.fares}</td>
                        <td>${attractions.cheapFares}</td>
                        <td>${attractions.cheapMessage}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/attractions/toUpdateAttractions?id=${attractions.attractionsId}">修改</a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/attractions/deleteAttractions?id=${attractions.attractionsId}">删除</a>
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