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
	<%--
		http://.../ifTagExam.jsp?type=xxx 요청이 된다고 가정
		type : S
		type : U
	 --%>
	 
	 <%--
	 	ifTagExam.jsp?type=S	or	ifTagExam.jsp?type=U
	  --%>
	  <c:if test="${param.type == 'S' }">
	  	<h2>관리자님 환영합니다</h2>
	  </c:if>
	  <c:if test="${param.type == 'U' }">
	  	<h2>일반사용자님 환영합니다</h2>
	  </c:if>
	  <c:if test="${empty param.type}">
	  	<h2>type parameter 전송 안됨</h2>
	  </c:if>
</body>
</html>