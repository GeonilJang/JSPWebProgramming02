<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp2018Ex02.*"%>

<jsp:useBean id="stu" class="jsp2018Ex02.StudentDAO"/>

<%
	StudentDTO arr[] =stu.select();
	if(arr == null || arr.length ==0){
		out.println("��ϵ� �л��� �����ϴ�.");
		out.println("<br><a href=student_2.jsp>���</a>");
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
        <h2>�л� ����Ʈ ��Ȳ</h2>
        <hr width="500">
        <a href="student_2.jsp">register</a>

      <table width=500 border=1>
        <tr>
          <th width=25%>�й�</th>
          <th width=25%>���</th>
          <th width=25%>�̸�</th>
          <th width=25%>��ȭ��ȣ</th>
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
