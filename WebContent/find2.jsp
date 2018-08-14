<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp2018Ex02.StudentDTO"%>
    
<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>    

<%
	String name = request.getParameter("name");
	if(name == null || name.trim().equals("")){
		response.sendRedirect("student_2.jsp");
		return;
	}
	
	StudentDTO arr[] = stu.findSt(name.trim());
	
	if(arr == null || arr.length==0){
		out.println(name+"�� �������� �ʽ��ϴ�.");
		out.println("<br/><a href=student_2.jsp>back</a>");
	}


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
        <h2>�л� ����Ʈ ��Ȳ</h2>
        <hr width="500">
        <a href="student_1.jsp">register</a>

      <table width=500 border=1>
        <tr>
          <th width=25%>�й�</th>
          <th width=25%>���</th>
          <th width=25%>�̸�</th>
          <th width=25%>��ȭ��ȣ</th>
        </tr>
     <% 
     	for(StudentDTO sdto : arr){
     %>
        <tr>
          <td><%= sdto.getHakbun() %></td>
          <td><%=sdto.getPw() %></td>
          <td><%=sdto.getName() %></td>
          <td><%=sdto.getHp() %></td>
        </tr>
      <%
    	} //for end
      %>  
        
      </table>
      </div>
    </center>

</body>
</html>