<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/7
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/content_left.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/content_right.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<div class="header-img"></div>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/product.do?action=showProduct">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/product.do?action=showProduct&discount=0">商城新品</a></li>
        <li><a href="${pageContext.request.contextPath}/product.do?action=showProduct&discount=1">特价商品</a></li>
        <li><a href="${pageContext.request.contextPath}/cart.do?action=showCart">购物车</a></li>
        <li><a href="#">订单查看</a></li>
        <li><a href="${pageContext.request.contextPath}/pages/customer/updateCustomer.jsp">用户修改</a></li>
        <li><a href="#">进入后台</a></li>
    </ul>
</nav>