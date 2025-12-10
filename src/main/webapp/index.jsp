<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>  <%-- JSP 페이지 설정(문서 타입, 문자 인코딩 UTF-8) --%>
<!DOCTYPE html>  <!-- HTML5 문서 선언 -->
<html> <!-- HTML 문서 시작 -->
<head> <!-- 문서의 머리 부분 -->
    <title>여기가 타이틀</title> <!-- 브라우저 탭에 표시되는 제목 -->
</head>
<body> <!-- 화면(브라우저)에 실제로 보이는 내용 시작 -->

<h1><%= "Hello World!!!안녕하세요" %></h1>  <!-- h1 제목, JSP 표현식으로 문자열 출력 -->

<br/> <!-- 줄 바꿈 -->

<a href="hello-servlet">Hello Servlet_1</a> <!-- hello-servlet 주소로 이동하는 링크 -->
<br><br>
<a href="loginForm.jsp">로그인 하러가기</a>

</body> <!-- 화면 영역 끝 -->
</html> <!-- HTML 문서 끝 -->
