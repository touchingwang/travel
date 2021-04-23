<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改景点</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改景点</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/attractions/updateAttractions" method="post">

        <%--出现的问题：我们提交了修改的SQL请求，但是修改失败，初次考虑，是事务问题，配置完毕事务
            依旧失败
            看一下sql语句，能否执行成功：SQL执行失败，修改未完成
            前端传递隐藏域
        --%>
        <input type="hidden" name="attractionsId" value="${QAttractions.attractionsId}">
        <div class="form-group">
            <label>景点开放时间：</label>
            <input type="text" name="openTime" class="form-control" value="${QAttractions.openTime}" required>
        </div>
        <div class="form-group">
            <label>景点关闭时间：</label>
            <input type="text" name="closeTime" class="form-control" value="${QAttractions.closeTime}" required>
        </div>
        <div class="form-group">
            <label>票价：</label>
            <input type="text" name="fares" class="form-control" value="${QAttractions.fares}" required>
        </div>
        <div class="form-group">
            <label>票价优惠：</label>
            <input type="text" name="cheapFares" class="form-control" value="${QAttractions.cheapFares}" required>
        </div>
        <div class="form-group">
            <label>优惠信息：</label>
            <input type="text" name="cheapMessage" class="form-control" value="${QAttractions.cheapMessage}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>
</body>
</html>