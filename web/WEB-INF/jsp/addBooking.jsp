<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>预约</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/booking/addBooking" method="post">
        <div class="form-group">
            <label>预约号：</label>
            <input type="text" name="bookingId" class="form-control" required>
        </div>
        <div class="form-group">
            <label>用户：</label>
            <input type="text" name="bookingUser" class="form-control" required>
        </div>
        <div class="form-group">
            <label>预约景点：</label>
            <input type="text" name="bookingAttractionsName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>预约时间：</label>
            <input type="text" name="bookingTime" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>