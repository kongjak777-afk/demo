<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 폼</title>
</head>
<body>
<h2>로그인</h2>
<%
    String error  = request.getParameter("error");
    if ("1".equals(error)) {
%>
<p style="color: red">
    id 또는 pw가 틀렸습니다.
</p>
<%
    }
%>

<%--    <form action="/login" method="post">  context path가 변경되면 에러를 수정하여야 함.. 추후 문제 발생됨  --%>
<form action="<%= request.getContextPath() %>/login" method="post">  <%-- 웹 프로젝트의 최상위 경로(root path) 를 반환하는 메서드 이용   --%>
    <label>아이디 :</label>
    <input type="text" name="id">
    <br><br>
    <label>비밀번호 :</label>
    <input type="password" name="pw">
    <br><br>

    <button type="submit">로그인</button>
</form>

</body>
</html>