<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>    
    
<%
	//����� �Է°� ������
	
	String hakbun = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name= request.getParameter("name");
	String hp = request.getParameter("hp");

	//��ȿ�� üũ.
	if(hakbun == null || pw == null || name == null || hakbun.trim().equals("") || pw.trim().equals("")|| name.trim().equals("")|| hp.trim().equals("")){
		response.sendRedirect("student_2.jsp");
		return; 
	}
	
	int result = stu.insertStudent(hakbun, pw, name, hp);
	String msg ="",url="";
	
	if(result > 0){
		msg="�л� ��ϿϷ�!!";
		url = "list.jsp";
	}else{
		msg="�л� ��Ͻ���!!";
		url = "student_2.jsp";
	}
	

%>

	
<script type="text/javascript">

	alert("<%= msg %>");
	location.href ="<%= url %>";

</script>