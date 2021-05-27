<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="cn.estore.entity.Cart" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>购物车</title>
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

    <table>
        <td width="724" valign="top" bgcolor="#FFFFFF" align="center">
            <!--右侧01-->
            <br>
            <br>
            <strong>我的购物车</strong>
            <c:if test="${requestScope.cartList==null}">
            <div align="center">
                您还没有购物！！！
            </div>
        </td>
    </table>
    </c:if>

    <c:if test="${requestScope.cartList!=null}">
        <form method="post" action="" name="cartForm" id="cartForm">
            <table width="92%" border="1" align="center" cellpadding="0"
                   cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#819BBC"
                   bordercolorlight="#FFFFFF">
                <tr>
                    <td width="5%" height="28">
                        <div align="center">
                            序号
                        </div>
                    </td>
                    <td width="40%">
                        <div align="center">
                            商品的名称
                        </div>
                    </td>
                    <td width="18%">
                        <div align="center">
                            商品价格
                        </div>
                    </td>
                    <td width="19%">
                        <div align="center">
                            商品数量
                        </div>
                    </td>
                    <td width="18%">
                        <div align="center">
                            商品金额
                        </div>
                    </td>
                </tr>

                <c:forEach items="${requestScope.cartList}" var="cart" varStatus="i">
                    <tr>
                        <td align="center" width="5%">
                                ${i.count}
                        </td>
                        <td align="center" width="40%">
                                ${cart.name}
                        </td>
                        <td align="center" width="18%">
                                ${cart.sellPrice}
                        </td>
                        <td align="center" width="19%">
                            <input name="${cart.id}" id="${cart.id}" size="7" type="text" value="${cart.amount}"
                                   onblur="updateCartAmount(this)">
                            <input name="${cart.id}product" id="${cart.id}product" value="${cart.product_id}"
                                   type="hidden">
                            <input name="${cart.id}customer" id="${cart.id}customer" value="${cart.customer_id}"
                                   type="hidden">
                        </td>
                        <td align="center" width="18%">
                                ${cart.sellPrice*cart.amount}
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>


        <table width="100%" height="52" border="0" align="center"
               cellpadding="0" cellspacing="0">
            <tr align="center" valign="middle">
                <td height="10">
                    &nbsp;
                </td>
                <td width="24%" height="10" colspan="-3" align="left">
                    &nbsp;
                </td>
            </tr>
            <tr align="center" valign="middle">
                <td height="21" class="tableBorder_B1">
                    &nbsp;
                </td>
                <%
                    float sum = 0;//商品总金额
                    //提取session中的购物车
                    List<Cart> cartList = (List<Cart>) request.getAttribute("cartList");
                    Cart cart = new Cart();
                    //累计所有商品付款总额
                    for (int i = 0; i < cartList.size(); i++) {
                        cart = null;
                        cart = cartList.get(i);
                        sum = (float) (sum + cart.amount * cart.sellPrice);
                    }
                %>
                <td height="21" colspan="-3" align="left">
                    合计总金额：<%=sum%>￥
                </td>
            </tr>
            <tr align="center" valign="middle">
                <td height="21" colspan="2">
                    <a href="${pageContext.request.contextPath}/ProductServlet?action=selectAllProduct&pageNum=0">继续购物</a>|
                    <a href="${pageContext.request.contextPath}/pages/cart/cartCheckOut.jsp">去收银台结账</a> |
                    <a href="${pageContext.request.contextPath}/cart.do?action=clearCart&customerId=${requestScope.customerId}">清空购物车</a>
                </td>
            </tr>
        </table>
        </td>
        </tr>
        </table>
        <script type="text/javascript">
            function updateCartAmount(input) {
                const cartId = input.name;
                const amount = input.value;
                const a = cartId + "product";
                const b = cartId + "customer";
                const productId = document.getElementById(a).value;
                const customerId = document.getElementById(b).value;
                if (amount == '' || isNaN(amount)) {
                    alert("请不要输入非法字符");
                    return false;
                } else {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/cartAjax?action=updateAmount",
                        data: {"customerId": customerId, "productId": productId, "amount": amount},
                        success: function (data) {
                            if (data.toString() != "ok") {
                                alert("失败！")
                            }
                        }
                    })

                }
            }

            function showTotal() {
                var total = 0;
                var number = 0;
                $("#price").each()
            }
        </script>
    </c:if>
</div>


<div class="footer">
    <jsp:include page="/pages/common/footer.jsp"/>
</div>
</body>
</html>
