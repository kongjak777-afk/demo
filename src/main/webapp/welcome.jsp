<%--
  Created by IntelliJ IDEA.
  User: Woori
  Date: 2025-12-09
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>환영페이지</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
    %>

    <h2>로그인 성공</h2>

    <p>
        <strong>
            <%= username
            %> 님 환영합니다.
        </strong>
    </p>

    <a href="index.jsp">메인으로</a>


</body>
</html>
