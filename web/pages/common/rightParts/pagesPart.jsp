<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/27
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${requestScope.title=='首页'}">
    <div class="page-span">
        <span>共为${requestScope.page.pageTotal}页</span>
        <span>共有${requestScope.page.pageTotalCount}条记录</span>
        <span>当前为第${requestScope.page.pageNo}页</span>
        <c:if test="${requestScope.page.pageNo<=1}">
            <span>上一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo>1}">
            <a href="product.do?action=showProduct&pageNo=${requestScope.page.pageNo-1}">上一页</a>
        </c:if>

        <c:if test="${requestScope.page.pageNo>=requestScope.page.pageTotal}">
            <span>下一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
            <a href="product.do?action=showProduct&pageNo=${requestScope.page.pageNo+1}">下一页</a>
        </c:if>
    </div>
</c:if>


<c:if test="${requestScope.title=='特价商品'}">
    <div class="page-span">
        <span>共为${requestScope.page.pageTotal}页</span>
        <span>共有${requestScope.page.pageTotalCount}条记录</span>
        <span>当前为第${requestScope.page.pageNo}页</span>
        <c:if test="${requestScope.page.pageNo<=1}">
            <span>上一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo>1}">
            <a href="product.do?action=showProduct&discount=1&pageNo=${requestScope.page.pageNo-1}">上一页</a>
        </c:if>

        <c:if test="${requestScope.page.pageNo>=requestScope.page.pageTotal}">
            <span>下一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
            <a href="product.do?action=showProduct&discount=1&pageNo=${requestScope.page.pageNo+1}">下一页</a>
        </c:if>
    </div>
</c:if>

<c:if test="${requestScope.title=='商城新品'}">
    <div class="page-span">
        <span>共为${requestScope.page.pageTotal}页</span>
        <span>共有${requestScope.page.pageTotalCount}条记录</span>
        <span>当前为第${requestScope.page.pageNo}页</span>
        <c:if test="${requestScope.page.pageNo<=1}">
            <span>上一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo>1}">
            <a href="product.do?action=showProduct&discount=0&pageNo=${requestScope.page.pageNo-1}">上一页</a>
        </c:if>

        <c:if test="${requestScope.page.pageNo>=requestScope.page.pageTotal}">
            <span>下一页</span>
        </c:if>
        <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
            <a href="product.do?action=showProduct&discount=0&pageNo=${requestScope.page.pageNo+1}">下一页</a>
        </c:if>
    </div>
</c:if>