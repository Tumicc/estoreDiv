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
    <title>首页</title>
</head>
<body>
<!--顶部-->
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
        <c:forEach items="${requestScope.page.items}" var="product">
            <div class="product-list">
                <div class="product-img">
                    <img src="${pageContext.request.contextPath}/images/productImages/${product.picture}"/>
                </div>
                <div class="line"></div>
                <div class="product-text">
                    <div>
                        商品名称：${product.name}
                    </div>
                    <div>
                        现价：${product.market_price}
                    </div>
                    <div>
                        简介：${product.description}
                    </div>
                    <div>
                        <c:if test="${sessionScope.user!=null}">
                            <a href="javascript:void(0)"
                               onclick="window.open('ProductServlet?action=getProductById&id=${product.id}','','width=500,height=200');">点击查看详细信息</a>
                        </c:if>
                        <c:if test="${sessionScope.user==null}">
                            登录后才可购买
                        </c:if>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="page">
            <span>共为${requestScope.page.pageTotal}页</span>
            <span>共有${requestScope.page.pageTotalCount}条记录</span>
            <span>当前为第${requestScope.page.pageNo}页</span>
            <c:if test="${requestScope.page.pageNo<=1}">
                <span>上一页</span>
            </c:if>
            <c:if test="${requestScope.page.pageNo>1}">
                <a href="product.do?action=selectAllProducts&pageNo=${requestScope.page.pageNo-1}">上一页</a>
            </c:if>

            <c:if test="${requestScope.page.pageNo>=requestScope.page.pageTotal}">
                <span>下一页</span>
            </c:if>
            <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
                <a href="product.do?action=selectAllProducts&pageNo=${requestScope.page.pageNo+1}">下一页</a>
            </c:if>
        </div>
    </div>
</div>

<!--底部-->
<div class="footer">
    <p>软件1932</p>
</div>
</body>
</html>
