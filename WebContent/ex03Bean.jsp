<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<jsp:useBean id="person" class="com.test.ex.Person" scope="page"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

  <!-- id�� name�� ���ƾ� �մϴ�. -->
  <jsp:setProperty name="person" property="name" value="��浿"/>
  <jsp:setProperty name="person" property="age" value="23"/>
  <jsp:setProperty name="person" property="id" value="1515"/>
  <jsp:setProperty name="person" property="gender" value="��"/>


  �̸� : <jsp:getProperty name="person" property="name"/><br/>
  ���� : <jsp:getProperty name="person" property="age"/><br/>
  ���̵� : <jsp:getProperty name="person" property="id"/><br/>
  ���� : <jsp:getProperty name="person" property="gender"/><br/>

</body>
</html>
