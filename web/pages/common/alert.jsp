<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimmy
  Date: 2021/5/9
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${requestScope.msg!=null}">
    <script type="text/javascript">
        if ("${requestScope.msg}" == "back") {
            history.back()
        } else {
            alert("${requestScope.msg}")
        }
    </script>
</c:if>
<c:if test="${requestScope.historyBack!=null}">
    <script type="text/javascript">
        window.onload = function () {
            history.back()
        }
    </script>
</c:if>