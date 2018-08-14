<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>
<%
	//삭제할 사람의 이름을 받아오기/
	String name = request.getParameter("name");
	
	if(name==null || name.trim().equals("")){
		response.sendRedirect("student_2.jsp");
	}
	
	
	//삭제 메소드 호출
	int res = stu.deleteStudent(name.trim());
	
	String str = "", url="student_2.jsp";
	
	if(res > 0){
		str="삭제 처리되었습니다.";
		url="list.jsp";
	}else{
		str="삭제 실패";		
	}
	
	

%>    
<script type="text/javascript">

	alert("<%= str %>");
	location.href ="<%= url %>";

</script>