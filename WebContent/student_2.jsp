<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 
	��(BEAN)���� DAO, DTO�� �ִ�.
	
	DAO : ������ ������ �������� �ϴ� ��ü. 
		-> Data Access Object 
		
	
	DTO �����Ͱ� ���Ե� ��ü�� �ٸ� �ý������� �����ϴ� ������ �ϴ� ��ü. 
		-> Data Transfer Object :
				

 -->    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<hr width=500/>
<h2>�л� ����ϱ�</h2>
<hr width=500/>

<form action="insert3.jsp">
	�й� : <input type="text" name="hakbun"/><br/>
	�̸� : <input type="text" name="name"/><br/>
	��� : <input type="text" name="pw"/><br/>
	���� : <input type="text" name="hp"/><br/>
	<input type="submit" value="���"/>&nbsp;<input type="reset" value="���"/>
</form>




<hr width=500/>
<h2>�л� �˻��ϱ�</h2>
<hr width=500/>

<form action="find2.jsp">
	�̸� : <input type="text" name="name"/><br/>
	<input type="submit" value="�˻�"/>
</form>


<hr width=500/>
<h2>�л� �輼�ϱ�</h2>
<hr width=500/>

<form action="delete2.jsp">
	�̸� : <input type="text" name="name"/><br/>
	<input type="submit" value="����"/>
</form>


<hr width=500/>
<h2>�л� ���</h2>
<hr width=500/>
	<a href="list.jsp">list</a>

</center>
</body>
</html>