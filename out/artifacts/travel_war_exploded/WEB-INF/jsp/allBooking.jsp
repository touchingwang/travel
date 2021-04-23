<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约列表</title>
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
                    <small>预约信息 —— 显示所有预约</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/booking/toAddBooking">预约</a>
            </div>
        </div>
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
                    <th>预约号</th>
                    <th>用户</th>
                    <th>预约景点</th>
                    <th>预约时间</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="booking" items="${requestScope.get('list')}">
                    <tr>
                        <td>${booking.bookingId}</td>
                        <td>${booking.bookingUser}</td>
                        <td>${booking.bookingAttractionsName}</td>
                        <td>${booking.bookingTime}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>