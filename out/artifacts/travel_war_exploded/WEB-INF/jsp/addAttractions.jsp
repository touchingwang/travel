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
                    <small>新增景点</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/attractions/addAttractions" method="post">
        <div class="form-group">
            <label>景点名称：</label>
            <input type="text" name="attractionsName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>景点地址：</label>
            <input type="text" name="attractionsAddress" class="form-control" required>
        </div>
        <div class="form-group">
            <label>开放时间：</label>
            <input type="text" name="openTime" class="form-control" required>
        </div>
        <div class="form-group">
            <label>关闭时间：</label>
            <input type="text" name="closeTime" class="form-control" required>
        </div>
        <div class="form-group">
            <label>票价：</label>
            <input type="text" name="fares" class="form-control" required>
        </div>
        <div class="form-group">
            <label>票价优惠：</label>
            <input type="text" name="cheapFares" class="form-control" required>
        </div>
        <div class="form-group">
            <label>优惠信息：</label>
            <input type="text" name="cheapMessage" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>