<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/7
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/content_left.js"></script>
<div class="left">
    <!--        商品搜索-->
    <jsp:include page="leftParts/searchProductByName.jsp"/>
    <!--        登录框-->
    <jsp:include page="leftParts/login.jsp"/>
</div>
