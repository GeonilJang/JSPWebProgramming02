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
		out.println(name+"이 존재하지 않습니다.");
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