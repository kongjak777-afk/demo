<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>환영 페이지</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
%>

<h2>로그인 성공!</h2>
<p>
    <strong>
        <%= userName %> 님, 환영합니다
    </strong>
</p>

<a href="index.jsp">메인으로</a>
</body>
</html>