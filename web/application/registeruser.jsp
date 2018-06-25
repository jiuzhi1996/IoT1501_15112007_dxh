<%--
  Created by IntelliJ IDEA.
  User: DONG
  Date: 2018/6/7
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

    <table width="1000px" align="center" cellpadding="0" cellspacing="0" >
        <tr>

            <td>
                <font size="6">学生管理平台</font>
            </td>

        </tr>
        <tr>

            <td>
                <form name="frm" method="post">
                <table width="700px" cellspacing="0" cellpadding="0" class="table table-hover">
                    <tr>
                        <td height="15" colspan="2">
                            用户注册
                        </td>
                    </tr>
                    <tr>
                        <td width="10%" align="right">
                            姓名:
                        </td>
                        <td>
                            <div class="col-xs-3">
                                <input name="name" type="text" size="10" class="form-control" placeholder="请输入姓名" >
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            性别:
                        </td>
                        <td>
                            <input name="sex" type="radio" value="0">男&nbsp;&nbsp;
                            <input name="sex" type="radio" value="1">女
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            邮箱:
                        </td>
                        <td>
                            <div class="col-xs-3">
                                <input name="email" type="text" size="10" class="form-control col-xs-3" placeholder="请输入邮箱" >
                            </div>
                        </td>
                    </tr>
                </table>
                </form>
            </td>

        </tr>
        <tr>
            <td>
                <input type="button" class="btn btn-default" style="width: 80px" value="提交" onclick="btnAdd('${pageContext.request.contextPath}/registerUser')">
                <input type="reset" class="btn btn-default" style="width: 80px" value="重置" onclick="btnReset()">
                <input type="button" class="btn btn-default" style="width: 80px" value="取消" onclick="btnCancel('${pageContext.request.contextPath}/toUserList')">
            </td>
        </tr>
    </table>

    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script language="JavaScript">
    function btnAdd(url) {
        document.frm.action=url;
        document.frm.submit();

    }
    function btnReset(url) {
        document.frm.reset();
    }
    function btnCancel(url) {
        window.location.replace(url);
    }
</script>
</body>
</html>
