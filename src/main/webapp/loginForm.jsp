"<%--
  Created by IntelliJ IDEA.
  User: Woori
  Date: 2025-12-09
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 폼</title>
</head>
<body>
    <h2>로그인</h2>
    <br>
    <%
        String error = request.getParameter("error");
        if ("1".equals(error)) {


    %>
    <p style="color: red">
        id 또는 pw 가 틀렸습니다.
    </p>
    <%
        }
    %>

    <form action="1" method="post">
        <label>아이디 : </label>
        <input type="text" name="id">
        <br><br>
        <label>비밀번호 : </label>
        <input type="password" name="pw">
        <br><br>
        <button type="submit">로그인</button>
    </form>

</body>
</html>
