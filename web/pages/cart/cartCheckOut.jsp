<%@ page import="cn.estore.util.StringUtil" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/26
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //生成订单编号
    String orderId = StringUtil.createOrderId();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

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
        <strong>收银结帐</strong>
        <form name="form" method="post" action="<%=request.getContextPath() %>/OrderServlet?action=insertOrder"
              onSubmit="checkEmpty(form)">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="30" colspan="2">
                        <div align="center" class="style1">
                            注意：请您不要恶意提交订单，退订单请和管理员联系！
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <div align="center">
                            订单编号：
                        </div>
                    </td>
                    <td>
                        <input type="hidden" name="orderId" value="<%=orderId%>"><%=orderId%>
                    </td>
                </tr>
                <tr>
                    <td width="24%" height="30">
                        <div align="center">
                            用户帐号：
                        </div>
                    </td>
                    <td width="76%">
                        <input type="text" name="name" value="${sessionScope.user.user_name}" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <div align="center">
                            真实姓名：
                        </div>
                    </td>
                    <td>
                        &nbsp;
                        <input type="text" name="realName" value="${sessionScope.user.real_name}" readonly="readonly">
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <div align="center">
                            邮寄地址：
                        </div>
                    </td>
                    <td>
                        &nbsp;
                        <input type="text" name="address">
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <div align="center">
                            联系电话：
                        </div>
                    </td>
                    <td>
                        &nbsp;
                        <input type="text" name="mobile" value="${sessionScope.user.mobile}">
                    </td>
                </tr>

                <tr>
                    <td height="30">
                        <div align="center">
                            应付金额：
                        </div>
                    </td>
                    <td>
                        <input type="text" name="totalPrice" value="<%=session.getAttribute("totalPrice") %>">
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <div align="center">
                            付款方式：
                        </div>
                    </td>
                    <td>
                        &nbsp;
                        <select name="paymentMode" class="textarea">
                            <option value="">
                                请选择
                            </option>
                            <option value="银行付款">
                                银行付款
                            </option>
                            <option value="邮政付款">
                                邮政付款
                            </option>
                            <option value="现金支付" selected="selected">
                                现金支付
                            </option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td height="30">
                        <div align="center">
                            送货方式：
                        </div>
                    </td>
                    <td>
                        &nbsp;
                        <select name="deliveryMethod" class="textarea">
                            <option value="">
                                请选择
                            </option>
                            <option value="普通邮寄" selected="selected">
                                普通邮寄
                            </option>
                            <option value="特快专递">
                                特快专递
                            </option>
                            <option value="EMS专递方式">
                                EMS专递方式
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="60">
                        <div align="center">
                            备注信息：
                        </div>
                    </td>
                    <td>
                        <textarea name="memo"></textarea>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" name="Submit2" value="提交">
            &nbsp;
            <input type="reset" name="reset" value="清除">
            &nbsp;
            <input type="button" name="back" value="返回" onClick="javasrcipt:history.go(-1)">
        </form>

    </div>
</div>

<div class="footer">
    <jsp:include page="/pages/common/footer.jsp"/>
</div>


</body>
</html>
