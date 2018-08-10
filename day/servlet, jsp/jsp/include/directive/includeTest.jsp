<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인클루드전</h2>
	<%@ include file="one.jsp" %>
	<h2>인클루드후</h2>
	msg :<%= msg %>
</body>
</html>