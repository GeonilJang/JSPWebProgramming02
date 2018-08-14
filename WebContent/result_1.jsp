<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="cnt" class="com.test.ex.CountBean" scope="page"/>
<b> cntÀÇ getCount() </b><br>
<jsp:getProperty name="cnt" property="count"/>
<br>
<a href ="ex03_1.jsp">ex03_1.jsp</a>
