<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/8
  Time: 10:57
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
    <form action="${pageContext.request.contextPath}/CustomerServlet?action=userUpdateByAnswer" method="post"
          name="userFindPasswordForm" class="userFindPasswordForm" onsubmit="return checkPassword()">
        <input type="hidden" name="username" value="${requestScope.user.username}">
        <input type="hidden" name="passwordHintAnswer" value="${requestScope.user.passwordHintAnswer}">

        <div>
            <label for="password">密&emsp;&emsp;码:</label>
            <input type="password" id="password" name="password"/>
        </div>
        <div>
            <label for="rePassword">确认密码:</label>
            <input type="password" id="rePassword" name="rePassword" onblur="checkPassword()"/>
            <span id="passwordWarning" style="color: red"></span>
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
<script type="text/javascript">
    // 判断密码
    function checkPassword() {
        document.getElementById("passwordWarning").innerHTML = null;
        if (document.getElementById("password").value !== document.getElementById("rePassword").value) {
            document.getElementById("passwordWarning").innerHTML = "两次密码的输入不一致!";
            return false;
        }
    }
</script>
</html>