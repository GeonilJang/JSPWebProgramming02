<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>

<%
/* 	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "1234";

	Connection conn = DriverManager.getConnection(url, uid, upw);
	out.println("������ ���̽� ���� �Ϸ� : "+conn); */

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "1234";

	String sql = "select * from student";

	Connection conn = DriverManager.getConnection(url, uid, upw);
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    
      <div class="" align=center>
        <hr width="500">
        <h2>�л� ����Ʈ ��Ȳ</h2>
        <hr width="500">
        <a href="student_2.jsp">register</a>

      <table width=500 border=1>
        <tr>
          <th width=25%>�й�</th>
          <th width=25%>���</th>
          <th width=25%>�̸�</th>
          <th width=25%>��ȭ��ȣ</th>
        </tr>
        
        <%
          while(rs.next()){
        	  
            String hakbun =  rs.getString("hakbun");
            String pw = rs.getString("pw");
            String name = rs.getString("name");
            String hp = rs.getString("hp");
        %>
        
        <tr>
          <td><%= hakbun %></td>
          <td><%= pw %></td>
          <td><%= name %></td>
          <td><%= hp %></td>
        </tr>
        
        <%}%>
      </table>
      </div>
    
  </body>
</html>

<%
  if(conn != null) conn.close();
  if(ps != null) ps.close();
  if(rs != null) rs.close();


%>
