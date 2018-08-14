<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>

<%!
	Connection dbconn;
	Statement stmt;
	ResultSet rs;
	
	String name, id, pw, hp, hp2, hp3,  gender;
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	id = (String)session.getAttribute("id");
	pw = (String)session.getAttribute("pw");
	
	String sql = "select * from member where id = '"+id+"' and pw='"+pw+"'";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	dbconn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott","1234");
	stmt = dbconn.createStatement();
	rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		name = rs.getString("name");
		pw = rs.getString("pw");
		hp = rs.getString("hp");
		hp2 = rs.getString("hp2");
		hp3 = rs.getString("hp3");
		gender = rs.getString("gender");
	}
	
	
%>
	<div class="" align=center>
		<hr width="500" size="2" color="red">
		<h2>회원 정보 수정</h2>
		<hr width="500" size="2" color="red">
		
		<form action="ModifyOK" method="post">
			이름 : <input type="text" name="name" size="20" value=<%=name %>><br>
			아이디 : <input type="text" name="id" size="20" value=<%=id%>><br>
			비밀번호 : <input type="text" name="pw" size="20" ><br>
			전화 번호 : <select name="hp">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="017">016</option>
						<option value="019">019</option>
					</select>
					<input type="text" name="hp2" size="4" value=<%=hp2%>>-<input type="text" name="hp3" size="4" value=<%=hp3%>><br>
			<%
				if(gender.equals("man")){
			%>
				성별 : <input type="radio" name="gender" value="man" checked="checked">남<input type="radio" name="gender">여<br>		
			<% }else{ %>
				성별 : <input type="radio" name="gender" value="man">남<input type="radio" name="gender"  checked="checked">여<br>
			<%} %>		
			
			<input type="submit" value="수정">&nbsp;<input type="reset" value="취소">
			
		</form>
	</div>
</body>
</html>