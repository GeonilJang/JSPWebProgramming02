<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2><%= session.getAttribute("name") %>님의 회원정보 수정이 정상적으로 처리되었습니다.</h2><br>
<a href="logout.jsp">로그아웃</a>
<a href="login.html">조인으로 갑시다.</a>
</body>
</html>