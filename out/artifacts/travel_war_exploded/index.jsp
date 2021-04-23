<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <style>
    a{
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3{
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background-color: deepskyblue;
      border-radius: 5px;
    }
  </style>
</head>
<body>
<button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>
<h3>
  <a href="${pageContext.request.contextPath}/user/allUser">用户信息页面</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/attractions/allAttractions">景点信息页面</a>
</h3>
<h3>
  <a href="${pageContext.request.contextPath}/booking/allBooking">预约信息页面</a>
</h3>
</body>
</html>
