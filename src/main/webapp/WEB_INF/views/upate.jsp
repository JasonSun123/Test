<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jason Sun
  Date: 2019/8/8
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改记录</title>
</head>
<body>
        <form th:action="@{/update}" th:method="post">
            <input type="hidden" name="id" th:value="${person.id}"/>
            <table border="1px">
                <tr>
                    <td colspan="2" align="center">修改记录</td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td th:text="${person.id}"></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td>
                        <input type="text" name="name" th:value="${person.name}"/>
                    </td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td>
                        <select name="gender">
                            <option value="男" th:selected="${person.gender}=='男'">男</option>
                            <option value="女" th:selected="${person.gender}=='女'">女</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td>
                        <input type="text" name="age" th:value="${person.age}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="修改"/>
                    </td>
                </tr>
            </table>
        </form>

</body>
</html>
