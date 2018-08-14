<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 
	빈(BEAN)에는 DAO, DTO가 있다.
	
	DAO : 데이터 접근을 목적으로 하는 객체. 
		-> Data Access Object 
		
	
	DTO 데이터가 포함된 객체를 다른 시스템으로 전달하는 역할을 하는 객체. 
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
<h2>학생 등록하기</h2>
<hr width=500/>

<form action="insert3.jsp">
	학번 : <input type="text" name="hakbun"/><br/>
	이름 : <input type="text" name="name"/><br/>
	비번 : <input type="text" name="pw"/><br/>
	전번 : <input type="text" name="hp"/><br/>
	<input type="submit" value="등록"/>&nbsp;<input type="reset" value="취소"/>
</form>




<hr width=500/>
<h2>학생 검색하기</h2>
<hr width=500/>

<form action="find2.jsp">
	이름 : <input type="text" name="name"/><br/>
	<input type="submit" value="검색"/>
</form>


<hr width=500/>
<h2>학생 삭세하기</h2>
<hr width=500/>

<form action="delete2.jsp">
	이름 : <input type="text" name="name"/><br/>
	<input type="submit" value="삭제"/>
</form>


<hr width=500/>
<h2>학생 목록</h2>
<hr width=500/>
	<a href="list.jsp">list</a>

</center>
</body>
</html>