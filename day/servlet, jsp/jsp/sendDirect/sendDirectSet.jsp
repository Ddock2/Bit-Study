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
	
	<c:if test="${ param.id == 'admin'}" >
		<%
			response.sendRedirect("admin.jsp");
		%>
	</c:if>
	<c:if test="${ param.id != 'admin'}">
		<%
			response.sendRedirect("user.jsp?id=" + request.getParameter("id"));
		%>
	</c:if>
</body>
</html>