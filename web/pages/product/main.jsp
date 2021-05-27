<%@ page import="cn.estore.entity.Product" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/7
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${requestScope.title}</title>
</head>

<body>
<jsp:include page="/pages/common/alert.jsp"/>

<%--头部大图+导航栏--%>
<div class="header">
    <jsp:include page="/pages/common/header.jsp"/>
</div>

<%--中间主体 左右部分--%>
<div class="container">
    <%--    左边--%>
    <jsp:include page="/pages/common/left.jsp"/>

    <%--    右边--%>
    <div class="content">
        <!--        商品展示顶部系统图-->
        <img src="${pageContext.request.contextPath}/images/systemImages/fg_right03.jpg">
        <!--        商品展示框-->
        <jsp:include page="/pages/common/rightParts/productListPart.jsp"/>
    </div>
    <%--        页码--%>
    <div class="page">
        <jsp:include page="/pages/common/rightParts/pagesPart.jsp"/>
    </div>

</div>
<!--底部-->
<div class="footer">
    <jsp:include page="/pages/common/footer.jsp"/>
</div>
</body>
</html>
