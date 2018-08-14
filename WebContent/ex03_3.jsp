<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
    
<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="session"/>    

<jsp:setProperty name="cnt" property="count" />


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>cnt의 getCount 호출</title>
</head>
<body>


html input tag's name => setPropery's propety<br>
<b>cnt의 getCount 호출</b>

<jsp:getProperty name="cnt" property="count"/><br>

<%--  <jsp:forward page="result_3.jsp"/>--%>
<a href="result_3.jsp">result_3.jsp</a><br>

<!-- 
1. forword액션 : 페이지를 이동시킨다. 
   이동루 페이지와 이동 전의 페이지는 request를 공유한다.
	   
2. response.sendRedirect("result_2.jsp");
 .forward 방식과의 차이점은 새로운 request 를 발생시킨다는 점이다.
 .새로운 요청을 발생시키기 문에 페이지를 이동시킨 다음에 로직을 계속 수행한다.
 
3. 자바스크립트의 location.href="result_2.jsp";
    - 지정된 url로 이동시킨다.
    - href이루호도 계속 로직을 수행함.
    sendRedirect() 비슷하다.
          로직을 수행하지

 -->


</body>
</html>