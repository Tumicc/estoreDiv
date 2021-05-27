<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/8
  Time: 10:51
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
<jsp:include page="/pages/common/alert.jsp"/>

<div class="header">
    <jsp:include page="/pages/common/header.jsp"/>
</div>
<div class="container">
    <img src="${pageContext.request.contextPath}/images/systemImages/fg2.jpg" alt="">
    <form action="${pageContext.request.contextPath}/CustomerServlet?action=userFindPasswordByQuestion" method="post"
          name="userFindPasswordForm" class="userFindPasswordForm">
        <input type="hidden" id="username" name="username" value="${requestScope.user.username}">
        <div>
            <span>密码提示:${requestScope.user.passwordQuestion}</span>
        </div>
        <div>
            <label for="passwordHintAnswer">密码答案:</label>
            <input type="text" id="passwordHintAnswer" name="passwordHintAnswer"/>
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
