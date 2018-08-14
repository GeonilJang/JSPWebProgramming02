<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
<%@ page import="com.test.ex.MemberDTO,com.test.ex.MemberDAO, java.util.*" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	MemberDAO memberDAO = new MemberDAO();
	ArrayList <MemberDTO> mdtos = memberDAO.selectMember();
	
	for(int i = 0 ; i < mdtos.size(); i++){
		MemberDTO mdto = mdtos.get(i);
		String name = mdto.getName();
		String id = mdto.getId();
		String pw = mdto.getPw();
		String hpNo = mdto.getHp()+"-"+mdto.getHp2()+"-"+mdto.getHp3();
		String  gender = mdto.getGender();
		
		out.println("이름 :"+name+", 아이디 : "+id+", 비밀번호 : "+pw+", 연락처 : "+hpNo+", 성별 : "+gender+"<br>");
		
	}
	


%>




</body>
</html>