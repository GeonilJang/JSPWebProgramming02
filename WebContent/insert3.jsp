<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- ��ü����  -->    
<jsp:useBean id="stuDTO" class="jsp2018Ex02.StudentDTO"/>    
<!-- set�� �̿��Ͽ� �� �ʱ�ȭ. -->
<jsp:setProperty property="hakbun" name="stuDTO"/>
<jsp:setProperty property="name" name="stuDTO"/>
<jsp:setProperty property="hp" name="stuDTO"/>
<jsp:setProperty property="pw" name="stuDTO"/>
    

<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>
<%
	int res = stu.insertStudent(stuDTO); //������ ��ü ����.
	
	String msg ="",url="";
	
	if(res > 0){
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