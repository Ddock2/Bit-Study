<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="id" value="hong" scope="request" />
	msg : <%= msg %><br>
	phone : ${ phone }<br>
	<h2>인클루드전</h2>
	파라미터 미설정<br>
	<c:import url="one.jsp" />
	파라미터 설정<br>
	<c:import url="one.jsp">
		<c:param name="name" value="hong" />
		<c:param name="age" value="24" />
	</c:import>
	phone : ${ phone }
	<h2>인클루드후</h2>
</body>
</html>