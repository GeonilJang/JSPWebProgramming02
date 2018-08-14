<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="session"/>
<b> cntÀÇ getCount() </b><br>
<jsp:getProperty name="cnt" property="count"/>
<br>
<a href ="ex03_3.jsp">ex03_3.jsp</a>
<% session.invalidate(); %>