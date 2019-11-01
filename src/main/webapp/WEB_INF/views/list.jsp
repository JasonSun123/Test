<%--
  Created by IntelliJ IDEA.
  User: Jason Sun
  Date: 2019/8/8
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人员信息表</title>
</head>
<body>
    <a th:href="@/{add}">添加记录</a>

        <table border="1px">
            <tr>
                <td colspan="6" align="center">人员信息表</td>
            </tr>
            <tr>
                <td>ID</td>
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>修改</td>
                <td>删除</td>
            </tr>

            <tr th:each="person:${persons}">
                <td th:text="${person.id}">ID</td>
                <td th:text="${person.name}">姓名</td>
                <td th:text="${person.gender}">性别</td>
                <td th:text="${person.age}">年龄</td>
                <td><a th:href="@{/update/}+${person.id}">修改</a></td>
                <td><a th:href="@{/delete/}+${person.id}" onclick="return confirm('确定要删除该记录吗？')">删除</a></td>
            </tr>
        </table>
</body>
</html>
