<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%@ page import = "java.sql.*" %>   
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>




<%!

	Connection connection;
	Statement statement;
	ResultSet resultSet;
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid="scott";
	String upw="1234";
	String sql = "select * from student";
	
%>
	
	
	<%
	try{
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw);
		statement = connection.createStatement();
		resultSet = statement.executeQuery(sql);
	
	
	
		while(resultSet.next()){
			String no = resultSet.getString("no");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String hp = resultSet.getString("hp");
			
			out.println("no : "+no+", 비번 : "+pw+", 이름 : "+name+"전화 번호 : "+hp+"<br>");
		}
		
	}catch(Exception e){
		
	}finally{
		try{
			if(connection != null)connection.close();
			if(statement != null)statement.close();
			if(resultSet != null)resultSet.close();
		}catch(Exception e){}
	}
	
	
	
	

%>







</body>
</html>