<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>
<%
	//������ ����� �̸��� �޾ƿ���/
	String name = request.getParameter("name");
	
	if(name==null || name.trim().equals("")){
		response.sendRedirect("student_2.jsp");
	}
	
	
	//���� �޼ҵ� ȣ��
	int res = stu.deleteStudent(name.trim());
	
	String str = "", url="student_2.jsp";
	
	if(res > 0){
		str="���� ó���Ǿ����ϴ�.";
		url="list.jsp";
	}else{
		str="���� ����";		
	}
	
	

%>    
<script type="text/javascript">

	alert("<%= str %>");
	location.href ="<%= url %>";

</script>