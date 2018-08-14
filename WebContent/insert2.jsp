<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>    
    
<%
	//사용자 입력값 얻어오기
	
	String hakbun = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name= request.getParameter("name");
	String hp = request.getParameter("hp");

	//유효성 체크.
	if(hakbun == null || pw == null || name == null || hakbun.trim().equals("") || pw.trim().equals("")|| name.trim().equals("")|| hp.trim().equals("")){
		response.sendRedirect("student_2.jsp");
		return; 
	}
	
	int result = stu.insertStudent(hakbun, pw, name, hp);
	String msg ="",url="";
	
	if(result > 0){
		msg="학생 등록완료!!";
		url = "list.jsp";
	}else{
		msg="학생 등록실패!!";
		url = "student_2.jsp";
	}
	

%>

	
<script type="text/javascript">

	alert("<%= msg %>");
	location.href ="<%= url %>";

</script>