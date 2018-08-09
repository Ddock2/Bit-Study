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
	  <c:choose>
	  	<c:when test="${ empty param.type }" >
	  		<h2> type 파라미터가 전송되지 않았습니다</h2>
	  	</c:when>
	  	<c:when test="${ param.type eq 'S' }" >
	  		<h2> 관리자 안녕 </h2>
	  	</c:when>
	  	<c:when test="${ param.type == 'U' }" >
	  		<h2> 일반유저 안녕</h2>
	  	</c:when>
	  	<c:otherwise>
	  		<h2> ㄴㄴㄴㄴㄴ.ㄴ.....누구세요?</h2>
	  	</c:otherwise>
	  </c:choose>
</body>
</html>