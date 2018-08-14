<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*" %>
<%
//입력값을 얻어 오기
String name = request.getParameter("name");

//유효성 체크
if(name == null || name.trim().equals("")){
	response.sendRedirect("student_1.jsp");
	return;
}

//데이터베이스 연결
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String upw = "1234";

String sql = "select count(*) from student where name=?";
String sql2 = "select * from student where name = ?";

Connection conn = DriverManager.getConnection(url, uid, upw);

PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, name);
ResultSet rs = ps.executeQuery();
rs.next();
int cnt = rs.getInt(1); // 1은 필드의 순서를 의미한다.

rs.close();
ps.close();

out.println("----> "+cnt);

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

  <center>
      <div class="" align=center>
        <hr width="500">
        <h2>학생 리스트 현황</h2>
        <hr width="500">
        <a href="student_1.jsp">register</a>

      <table width=500 border=1>
        <tr>
          <th width=25%>학번</th>
          <th width=25%>비번</th>
          <th width=25%>이름</th>
          <th width=25%>전화번호</th>
        </tr>
        <%
          if(cnt>0){
          	
        	  ps = conn.prepareStatement(sql2);
        	  ps.setString(1, name);
        	  rs = ps.executeQuery();
        	  
        	  while(rs.next()){
        		  String hakbun = rs.getString(1);
        		  String pw = rs.getString(2);
        		  String name2 = rs.getString(3);
        		  String hp = rs.getString(4);
        		
        	  

        %>
        <tr>
          <td><%= hakbun%></td>
          <td><%=pw %></td>
          <td><%=name2%></td>
          <td><%=hp %></td>
        </tr>
        <%}
        	  }%>
      </table>
      </div>
    </center>



</body>
</html>