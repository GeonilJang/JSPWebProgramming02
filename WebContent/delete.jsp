<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*" %>    
<%
	//������ ����� �̸��� �޾ƿ���/
	String name = request.getParameter("name");
	
	if(name==null || name.trim().equals("")){
		response.sendRedirect("student_1.jsp");
	}
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott", upw="1234";
	
	Connection dbconn = DriverManager.getConnection(url, uid, upw);
	out.println("������ ���̽� ���� : "+dbconn);
	
	
	String sql = "delete from student where name=?";
	
	PreparedStatement ps = dbconn.prepareStatement(sql);
	ps.setString(1,name);
	
	
	//������ ����ǰ� ��� row�� ������ �޾Ҵ��� int ������ ��ȯ�� ���ش�.
	int n = ps.executeUpdate();

	//������ ����� ó��/
	
	String str = "����";
	String backUrl = "student_1.jsp";
	
	if(n > 0){
		str +="ó�� �Ǿ����ϴ�.";
		backUrl="list.jsp";
	}else{
		str +="ó���� ���� �ʾҽ��ϴ�.";
		
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