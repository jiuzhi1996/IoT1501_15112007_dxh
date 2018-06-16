<%--
  Created by IntelliJ IDEA.
  User: DONG
  Date: 2018/6/8
  Time: 08:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>用户列表</title>
</head>
<body>

    <table width="800" border="1" align="center" cellpadding="0" cellspacing="0">

        <tr>
            <td>
                <font size="10">XXXX平台</font>
            </td>
        </tr>

        <tr>
            <td height="30">
                <input type="button" style="width: 80px" value="注册" onclick="btnAdd('${pageContext.request.contextPath}/toRegister')">
                <input type="button" style="width: 80px" value="修改" onclick="btnEdit('${pageContext.request.contextPath}/toEdituser')">
                <input type="button" style="width: 80px" value="删除" onclick="btnDelete('${pageContext.request.contextPath}/deleteUser')">
            </td>
        </tr>
        <tr>
            <td>
                <form name="frm" method="post">
                    <table width="100%" border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="30" width="5%">选择</td>
                            <td width="15%">姓名</td>
                            <td width="10%">性别</td>
                            <td>邮箱</td>
                        </tr>

                        <c:forEach var="user" items="${user_list}">
                        <tr>
                            <td height="20">
                                <input type="radio" name="id" value="${user.id}">
                            </td>
                            <td>${user.name}</td>
                            <c:set var="sex" value="${user.sex}"></c:set>
                            <td>
                                <c:if test="${sex == 0}">
                                    <c:out value="男"/>
                                </c:if>
                                <c:if test="${sex == 1}">
                                    <c:out value="女"/>
                                </c:if>
                            </td>
                            <td>${user.email}</td>
                        </tr>
                        </c:forEach>

                    </table>
                </form>

            </td>
        </tr>

    </table>

    <script language="JavaScript">

        function btnAdd(url) {
            window.location.replace(url);
        }
        function btnEdit(url) {
            document.frm.action=url;
            document.frm.submit();
        }
        function btnDelete(url) {
            document.frm.action=url;
            document.frm.submit();
        }

    </script>

</body>
</html>
