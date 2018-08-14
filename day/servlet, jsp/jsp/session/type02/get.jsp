<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	설정된 세션 id : ${ id }<br>
	설정된 세션 password : ${ pw }<br>
	<hr>
	설정된 세션 id : ${ sessionScope.id }<br>
	설정된 세션 password : <c:out value="${ sessionScope.pw }" /><br>
	<hr>
	<a href="remove.jsp">세션 삭제</a>
</body>
</html>