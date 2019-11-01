<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jason Sun
  Date: 2019/8/8
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加记录</title>
</head>
<body>
        <form th:th:action="@{/add}" th:method="post">
            <table border="1px">
                <tr>
                    <td colspan="2" align="center">添加记录</td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td>
                        <input type="text" name="name"/>
                    </td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td>
                        <select name="gender">
                            <option>请选择</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td>
                        <input type="text" name="age"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="添加"/>
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>
