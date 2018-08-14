<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*" %>    
<%
	//삭제할 사람의 이름을 받아오기/
	String name = request.getParameter("name");
	
	if(name==null || name.trim().equals("")){
		response.sendRedirect("student_1.jsp");
	}
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott", upw="1234";
	
	Connection dbconn = DriverManager.getConnection(url, uid, upw);
	out.println("데이터 베이스 연결 : "+dbconn);
	
	
	String sql = "delete from student where name=?";
	
	PreparedStatement ps = dbconn.prepareStatement(sql);
	ps.setString(1,name);
	
	
	//쿼리가 실행되고 몇개의 row가 영향을 받았는지 int 값으로 반환을 해준다.
	int n = ps.executeUpdate();

	//삭제된 결과를 처리/
	
	String str = "삭제";
	String backUrl = "student_1.jsp";
	
	if(n > 0){
		str +="처리 되었습니다.";
		backUrl="list.jsp";
	}else{
		str +="처리가 되지 않았습니다.";
		
	}
%>    
    
<script>
	alert(" <%= str %> ")
	location.href="<%=backUrl%>"
</script>    
    
<%
	if(ps != null)ps.close();
	if(dbconn != null)dbconn.close();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>