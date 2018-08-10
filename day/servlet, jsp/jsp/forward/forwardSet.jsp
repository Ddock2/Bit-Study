<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>누구지?</h2>
	<c:set var="id" value="${param.id}" scope="request" />
	
	<c:if test="${ param.id == 'admin'}" >
		<jsp:forward page="admin.jsp"></jsp:forward>
	</c:if>
	<c:if test="${ param.id != 'admin'}">
		<jsp:forward page="user.jsp">
			<jsp:param name="id" value="${param.id}" />
		</jsp:forward>
	</c:if>
</body>
</html>