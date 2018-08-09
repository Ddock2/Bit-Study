<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유영역에 설정(page)<br>
	<c:set var="cnt" value="1" />
	
	공유영역에 등록된 cnt변수 출력(page)<br>
	cnt : ${ cnt }<br>
	
	변수 cnt값 1증가<br>
	<c:set var="cnt" value="${cnt+1}" scope="request" />
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>

<%--
	공유영역 4가지
	[JSP]			[EL]				[JSTL]
	pageContext		pageScope			page
	request			requestScope		request
	session			sessionScope		session
	application		applicationScope	application
--%>