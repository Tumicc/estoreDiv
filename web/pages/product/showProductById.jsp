<%@ page import="cn.estore.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/12
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看详细</title>
    <%
        Product product = (Product) request.getAttribute("product");
        String tempImgBuyClose = request.getContextPath() + "/images/systemImages/1.jpg";
        String tempImgBuyBascket = request.getContextPath() + "/images/systemImages/2.jpg";
    %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
    <style type="text/css">

        body {
            background-color: #fafafa;
        }

        td {
            font-size: 9pt;
            color: #000000;
        }

        .style1 {
            color: #FF9900;
            font-weight: bold;
        }
    </style>
</head>

<body>
<div align="center">
    <p class="style1">
        查看商品详细信息
    </p>
</div>
<table width="320" border="1" align="center" cellpadding="0"
       cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF"
       bordercolordark="#819BBC" align="center" valign="middle">
    <tr>
        <td width="36%" rowspan="4" height="120">
            <div align="center">
                <%
                    String tempImg = request.getContextPath().trim() + "/images/productImages/" + product.getPicture();
                %>
                <input name="pricture" type="image"
                       src="<%=request.getContextPath()%>/images/productImages/<%=product.getPicture()%>"
                       width="110"
                       height="100">
            </div>
        </td>

        <td width="64%" height="30">
            <div align="center">
                <table width="71%" height="20" border="0" align="center"
                       cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            商品名称：<%=product.getName()%>
                            <input type="hidden" name="customerId" id="customerId" value="${sessionScope.user.id}"/>
                            <input type="hidden" name="name" id="name" value="<%=product.getName()%>"/>
                            <input type="hidden" name="productId" id="productId" value="<%=product.getId()%>"/>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="30">
            <div align="center">
                <table width="71%" border="0" align="center" cellpadding="0"
                       cellspacing="0">
                    <tr>
                        <td>
                            <input type="hidden" name="sellp" id="sellp" value="<%=product.getSellPrice()%>"/>
                            <input type="hidden" name="price" id="price" value="<%=product.getMarketPrice()%>"/>
                            <%
                                if (product.getDiscount() == 1) {
                            %>
                            特&emsp;&emsp;价：<%=product.getSellPrice()%>元
                            <%
                            } else {
                            %>
                            现&emsp;&emsp;价：<%=product.getMarketPrice()%>元
                            <%
                                }
                            %>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td height="30">
            <div align="center">
                <table width="71%" border="0" align="center" cellpadding="0"
                       cellspacing="0">
                    <tr>
                        <td>
                            简&nbsp;&nbsp;&nbsp;&nbsp;介：<%=product.getDescription()%>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr align="center">
        <td height="30">
            <img src="<%=tempImgBuyClose%>" onClick="window.close()">
            &nbsp;&nbsp;
            <img src="<%=tempImgBuyBascket%>" name="Submit" value="放入购物车" onclick="add()">
        </td>

    </tr>
</table>


<script type="text/javascript">
    function add() {
        const customerId = document.getElementById("customerId").value;
        const productId = document.getElementById("productId").value;
        const name = document.getElementById("name").value;
        let sellp = document.getElementById("sellp").value;
        const price = document.getElementById("price").value;
        let sellPrice = sellp;
        if (sellp = 0) {
            sellPrice = price;
        }
        $.post({
            url: "${pageContext.request.contextPath}/cart.do?action=cartAdd",
            data: {
                "customerId": customerId,
                "productId": productId,
                "name": name,
                "sellPrice": sellPrice
            },
            success: function (data) {
                if (data.toString() === 'ok') {
                    alert("添加成功");
                } else {
                    alert("添加失败");
                }
            }
        })

    }
</script>

</body>
</html>
