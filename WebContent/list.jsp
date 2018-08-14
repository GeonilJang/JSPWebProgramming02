<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp2018Ex02.*"%>

<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>

<%
	StudentDTO arr[] =stu.select();
	if(arr == null || arr.length ==0){
		out.println("등록된 학생이 없습니다.");
		out.println("<br><a href=student_2.jsp>등록</a>");
		return;
	}


%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    
      <div class="" align=center>
        <hr width="500">
        <h2>학생 리스트 현황</h2>
        <hr width="500">
        <a href="student_2.jsp">register</a>

      <table width=500 border=1>
        <tr>
          <th width=25%>학번</th>
          <th width=25%>비번</th>
          <th width=25%>이름</th>
          <th width=25%>전화번호</th>
        </tr>
        
        <%
         	for(int i = 0 ; i < arr.length; i++){
         		String hakbun = arr[i].getHakbun();
         		String pw = arr[i].getPw();
         		String name = arr[i].getName();
         		String hp = arr[i].getHp();
        %>
        
        <tr>
          <td><%= hakbun %></td>
          <td><%= pw %></td>
          <td><%= name %></td>
          <td><%= hp %></td>
        </tr>
        
        <%}%>
      </table>
      </div>
    
  </body>
</html>
