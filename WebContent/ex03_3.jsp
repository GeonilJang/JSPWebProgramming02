<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
    
<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="session"/>    

<jsp:setProperty name="cnt" property="count" />


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>cnt�� getCount ȣ��</title>
</head>
<body>


html input tag's name => setPropery's propety<br>
<b>cnt�� getCount ȣ��</b>

<jsp:getProperty name="cnt" property="count"/><br>

<%--  <jsp:forward page="result_3.jsp"/>--%>
<a href="result_3.jsp">result_3.jsp</a><br>

<!-- 
1. forword�׼� : �������� �̵���Ų��. 
   �̵��� �������� �̵� ���� �������� request�� �����Ѵ�.
	   
2. response.sendRedirect("result_2.jsp");
 .forward ��İ��� �������� ���ο� request �� �߻���Ų�ٴ� ���̴�.
 .���ο� ��û�� �߻���Ű�� ���� �������� �̵���Ų ������ ������ ��� �����Ѵ�.
 
3. �ڹٽ�ũ��Ʈ�� location.href="result_2.jsp";
    - ������ url�� �̵���Ų��.
    - href�̷�ȣ�� ��� ������ ������.
    sendRedirect() ����ϴ�.
          ������ ��������

 -->


</body>
</html>