<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<jsp:useBean id="person" class="com.test.ex.Person" scope="page"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

  <!-- id와 name은 같아야 합니다. -->
  <jsp:setProperty name="person" property="name" value="고길동"/>
  <jsp:setProperty name="person" property="age" value="23"/>
  <jsp:setProperty name="person" property="id" value="1515"/>
  <jsp:setProperty name="person" property="gender" value="남"/>


  이름 : <jsp:getProperty name="person" property="name"/><br/>
  나이 : <jsp:getProperty name="person" property="age"/><br/>
  아이디 : <jsp:getProperty name="person" property="id"/><br/>
  성별 : <jsp:getProperty name="person" property="gender"/><br/>

</body>
</html>
