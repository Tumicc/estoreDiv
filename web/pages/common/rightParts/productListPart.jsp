<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/27
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach items="${requestScope.page.items}" var="product">
    <div class="product-list">
        <div class="product-img">
            <img src="${pageContext.request.contextPath}/images/productImages/${product.picture}"/>
        </div>
        <div class="product-text">
            <div>
                商品名称：${product.name}
            </div>
            <c:if test="${!product.discount}">
                <div>
                    现价：${product.market_price}
                </div>
            </c:if>
            <c:if test="${product.discount}">
                <div>
                    原价：<span style="text-decoration: line-through;color: red">${product.market_price}</span>
                </div>
                <div>
                    现价：<span>${product.sell_price}</span>
                </div>
            </c:if>
            <div style="overflow: hidden;width: 100%;height: 20px;line-height: 20px;">
                简介：${product.description}
            </div>
            <div class="detail">
                <c:if test="${sessionScope.user!=null}">
                    <a href="javascript:void(0)"
                       onclick="window.open('product.do?action=getProductById&id=${product.id}','','width=500,height=200');">点击查看详细信息</a>
                </c:if>
                <c:if test="${sessionScope.user==null}">
                    登录后才可购买
                </c:if>
            </div>
        </div>
    </div>
</c:forEach>