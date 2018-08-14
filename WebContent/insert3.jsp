<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- 객체생성  -->    
<jsp:useBean id="stuDTO" class="jsp2018Ex02.StudentDTO"/>    
<!-- set을 이용하여 값 초기화. -->
<jsp:setProperty property="hakbun" name="stuDTO"/>
<jsp:setProperty property="name" name="stuDTO"/>
<jsp:setProperty property="hp" name="stuDTO"/>
<jsp:setProperty property="pw" name="stuDTO"/>
    

<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>
<%
	int res = stu.insertStudent(stuDTO); //생성된 객체 전달.
	
	String msg ="",url="";
	
	if(res > 0){
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