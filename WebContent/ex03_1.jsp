<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="page"/>    

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


<a href="result_1.jsp">result_1</a><br>



</body>
</html>