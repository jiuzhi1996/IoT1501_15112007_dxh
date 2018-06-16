<%--
  Created by IntelliJ IDEA.
  User: DONG
  Date: 2018/6/13
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>修改用户信息</title>
</head>
<body>
    <table width="800" border="1" align="center" cellpadding="0" cellspacing="0">
        <tr>

            <td>
                <font size="10">XXXX平台</font>
            </td>

        </tr>
        <tr>

            <td>
                <form name="frm" method="post">
                    <table width="100%" border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="30" colspan="2">
                                用户信息修改
                            </td>
                        </tr>
                        <tr>
                            <td width="20%" align="right">
                                用户ID
                            </td>
                            <td>
                                <input name="id" value="${user.id}" type="text" size="10" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                姓名:
                            </td>
                            <td>
                                <input name="name" value="${user.name}" type="text" size="10">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                性别:
                            </td>
                            <td>
                                <c:set var="sex" value="${user.sex}"/>
                                <input name="sex" value="0" type="radio"
                                    <c:if test="${sex == 0}">
                                            <c:out value="checked"/>
                                    </c:if>
                                >男&nbsp;&nbsp;
                                <input name="sex" value="1" type="radio"
                                <c:if test="${sex == 1}">
                                    <c:out value="checked"/>
                                </c:if>
                                >女
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                邮箱:
                            </td>
                            <td>
                                <input name="email" value="${user.email}" type="text" size="10">
                            </td>
                        </tr>
                    </table>
                </form>
            </td>

        </tr>
        <tr>
            <td>
                <input type="button" style="width: 80px" value="提交" onclick="btnEdit('${pageContext.request.contextPath}/editUser')">
                <input type="reset" style="width: 80px" value="重置" onclick="btnReset('${pageContext.request.contextPath}/toEdituser?id=${user.id}')">
                <input type="button" style="width: 80px" value="取消" onclick="btnCancel('${pageContext.request.contextPath}/toUserList')">
            </td>
        </tr>
    </table>
<script language="JavaScript">
    function btnEdit(url) {
        document.frm.action = url;
        document.frm.submit();
    }
    function btnReset(url) {
        window.location.replace(url);
    }
    function btnCancel(url) {
        window.location.replace(url);
    }

</script>

</body>
</html>
