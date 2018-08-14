<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %>  

<%!

/* 	Connection connection;
	Statement statement;
	ResultSet resultSet;
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid="scott";
	String upw="1234";
	String sql = "select * from student"; */
	
%>
	

<%
	//입력값 받아 오기
	
	String hakbun = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
	//유효성 체크.
	if(hakbun == null || pw == null || name == null || 
	hakbun.trim().equals("") || pw.trim().equals("")||
	name.trim().equals("")|| hp.trim().equals("")){
%>
	<script type="text/javascript">
		alert("입력 값중 없는게 있습니다.");
		location.href="student_1.jsp";
		//history.back(); //history.go(-1);
	</script>
<%		
	
	}
	
	//데이터베이스 연동.
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "1234";

	Connection conn = DriverManager.getConnection(url, uid, upw);
	//out.println("데이터 베이스 연결 완료 : "+conn);
	
	String sql = "insert into student values(?,?,?,?)";
	//Statement 객체보다 PreparedStatement 객체가 더 좋다는 말이있다.
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,hakbun);
	ps.setString(2,pw);
	ps.setString(3,name);
	ps.setString(4,hp);
	
	int n = ps.executeUpdate();
	//prepareStatement 메소드의 리턴값.
	// 0보다 큰값은  insert update delete한 row수 를 리턴한다.
	// 0인 경우 리턴 값이 없다.
	 
	if(n>0){
		%>
		<script type="text/javascript">
			alert("학생이 등록되었습니다... 학생 리스트를 출력하겠습니다.");
			location.href="list.jsp";
		</script>
		
		<%
	}else{
		%>
		<script type="text/javascript">
			alert("학생 등록 실패.");
			location.href="student_1.jsp";
		</script>
		
		<%
	}
	
	
	//resource 반납.
	ps.close();
	conn.close();
	
%>

</body>
</html>