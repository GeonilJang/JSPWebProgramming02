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
	//�Է°� �޾� ����
	
	String hakbun = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
	//��ȿ�� üũ.
	if(hakbun == null || pw == null || name == null || 
	hakbun.trim().equals("") || pw.trim().equals("")||
	name.trim().equals("")|| hp.trim().equals("")){
%>
	<script type="text/javascript">
		alert("�Է� ���� ���°� �ֽ��ϴ�.");
		location.href="student_1.jsp";
		//history.back(); //history.go(-1);
	</script>
<%		
	
	}
	
	//�����ͺ��̽� ����.
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "1234";

	Connection conn = DriverManager.getConnection(url, uid, upw);
	//out.println("������ ���̽� ���� �Ϸ� : "+conn);
	
	String sql = "insert into student values(?,?,?,?)";
	//Statement ��ü���� PreparedStatement ��ü�� �� ���ٴ� �����ִ�.
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,hakbun);
	ps.setString(2,pw);
	ps.setString(3,name);
	ps.setString(4,hp);
	
	int n = ps.executeUpdate();
	//prepareStatement �޼ҵ��� ���ϰ�.
	// 0���� ū����  insert update delete�� row�� �� �����Ѵ�.
	// 0�� ��� ���� ���� ����.
	 
	if(n>0){
		%>
		<script type="text/javascript">
			alert("�л��� ��ϵǾ����ϴ�... �л� ����Ʈ�� ����ϰڽ��ϴ�.");
			location.href="list.jsp";
		</script>
		
		<%
	}else{
		%>
		<script type="text/javascript">
			alert("�л� ��� ����.");
			location.href="student_1.jsp";
		</script>
		
		<%
	}
	
	
	//resource �ݳ�.
	ps.close();
	conn.close();
	
%>

</body>
</html>