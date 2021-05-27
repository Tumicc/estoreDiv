<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/8
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>找回密码</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userFindPassword.css"/>
</head>
<body>
<div class="header">
    <jsp:include page="/pages/common/header.jsp"/>
</div>
<div class="container">
    <img src="${pageContext.request.contextPath}/images/systemImages/fg2.jpg" alt="">
    <form action="${pageContext.request.contextPath}/customer.do?action=userFindPasswordByUsername" method="post"
          name="userFindPasswordForm" class="userFindPasswordForm">

        <div>
            <label for="username">用户名</label>
            <input type="text" name="username" id="username"/>
        </div>
        <div class="findPassword-button">
            <span><input type="image" src="${pageContext.request.contextPath}/images/systemImages/save.jpg"></span>
            <span><a href="javascript:userFindPasswordForm.reset()"><img
                    src="${pageContext.request.contextPath}/images/systemImages/clear.gif" alt="重置"/></a></span>
            <span><a href="javascript:history.back()"><img
                    src="${pageContext.request.contextPath}/images/systemImages/back.gif" alt="返回"/></a></span>
        </div>
    </form>
</div>
<div class="footer">
    <jsp:include page="/pages/common/footer.jsp"/>
</div>
</body>
</html>
