<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="request"/>
<b> cntÀÇ getCount() </b><br>
<jsp:getProperty name="cnt" property="count"/>
<br>
<a href ="ex03_2.jsp">ex03_2.jsp</a>
