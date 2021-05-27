<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/12
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户修改</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/updateCustomer.css"/>
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/userRegister.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<c:if test="${sessionScope.user==null}">
    <script type="text/javascript">
        window.onload = a;

        function a() {
            alert("请先登录！")
            history.back()
        }
    </script>
</c:if>

<c:if test="${sessionScope.user != null}">
    <div class="header">
        <!-- 顶部大图 -->
        <jsp:include page="/pages/common/header.jsp"/>
    </div>
    <div class="container">
        <img src="${pageContext.request.contextPath}/images/systemImages/fg1.jpg">
        <form action="${pageContext.request.contextPath}/CustomerServlet?action=updateCustomer"
              method="post" class="updateCustomerForm" name="updateCustomerForm"
              onsubmit="return userRegisterCheck(registerForm);">
            <div>
                <label for="username">用户名称:</label>
                <span type="color: black">${sessionScope.user.user_name}</span>
                <input type="hidden" id="username" name="username" value="${sessionScope.user.user_name}"/>
            </div>
            <div>
                <label for="password">用户密码:</label>
                <input type="password" id="password" name="password" placeholder="用户密码"/>
            </div>
            <div>
                <label for="rePassword">确认密码:</label>
                <input type="password" id="rePassword" name="rePassword" placeholder="确认密码" onblur="checkPassword()"/>
                <span id="passwordWarning"></span>
            </div>
            <div>
                <label for="realName">真实姓名:</label>
                <input type="text" id="realName" name="realName" placeholder="真实姓名"
                       value="${sessionScope.user.real_name}"/>
            </div>
            <div>
                <label for="mobile">手&emsp;&emsp;机:</label>
                <input type="text" id="mobile" name="mobile" placeholder="手机号" value="${sessionScope.user.mobile}"
                       onblur="checkMobile()"/>
                <span id="mobileWarning"></span>
            </div>
            <div>
                <label for="email">电子邮箱:</label>
                <input type="text" id="email" name="email" placeholder="电子邮箱" value="${sessionScope.user.email}"
                       onblur="checkEmail()"/>
                <span id="emailWarning"></span>
            </div>
            <input type="hidden" id="passwordQuestion" name="passwordQuestion"
                   value="${sessionScope.user.password_question}"/>
            <input type="hidden" id="passwordHintAnswer" name="passwordHintAnswer"
                   value="${sessionScope.user.password_hint_answer}"/>
            <div class="button">
                <span><input type="image" src="${pageContext.request.contextPath}/images/systemImages/save.jpg"></span>
                <span><a href="javascript:updateCustomerForm.reset()"><img
                        src="${pageContext.request.contextPath}/images/systemImages/clear.gif" alt="重置"/></a></span>
                <span><a href="javascript:history.back()"><img
                        src="${pageContext.request.contextPath}/images/systemImages/back.gif" alt="返回"/></a></span>
            </div>
        </form>
    </div>
    <!-- 页尾 -->
    <div class="footer">
        <p>软件1932</p>
    </div>
</c:if>

</body>
</html>
