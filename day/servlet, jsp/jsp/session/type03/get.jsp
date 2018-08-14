<%@page import="kr.co.mlec.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(member != null) {%>
		설정된 세션 id : ${ member.getId() }<br>
		설정된 세션 password : ${ member.getPw() }<br>
	<hr>
	설정된 세션 id : ${ member.id };<br>
	설정된 세션 password : ${ member.pw }<br>
	<hr>
	설정된 세션 id : ${ sessionScope.member.id }<br>
	설정된 세션 password : <c:out value="${ sessionScope.member.pw }" /><br>
	<% }else{%>
		없다
	<%}	%>
	<hr>
	<a href="remove.jsp">세션 삭제</a>
</body>
</html>