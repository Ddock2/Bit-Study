<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<%
	String[] names = {"고길동", "홍길동", "최길동", "한길동"};

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length);
	
	String str ="Hello JSTL";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1 - 10사이의 정수 출력</h2>
	<c:forEach var="i" begin="1" end="10">
		${ i } &nbsp;&nbsp;
	</c:forEach>

	<hr><br>
	
	<select>
		<c:forEach begin="1930" end="2000" var="year">
			<option>${year}</option>
		</c:forEach>
	</select>
	
	<select>
		<c:forEach begin="1930" end="2000" var="year" step="10">
			<option>${year}</option>
		</c:forEach>
	</select>
	
	<hr><br>
	<c:forEach var="i" begin="0" end="${ length-1 }">
		${names[i]}
		<c:if test="${i!=length-1}">
			,&nbsp;&nbsp;
		</c:if>
	</c:forEach>
	 
	<hr><br>
	<c:set var="cnt" value="1" scope="page" />
	<c:forEach var="n" items="${names}">
		<c:if test="${cnt!=1}">
			,&nbsp;&nbsp;
		</c:if>
		${n}
		<c:set var="cnt" value="${cnt+1}" scope="page" />
	</c:forEach>
	<c:remove var="cnt" scope="page"/>
	
	<hr><br>
	first:last:index:count<br>
	<c:forEach var="n" items="${names}" varStatus="loop">
		${ loop.first }:${ loop.last }:${ loop.index }:${ loop.count }<br>
	</c:forEach>
	
	<hr><br>
	<c:forEach var="n" items="${names}" varStatus="loop">
		<c:if test="${!loop.first}">
			,&nbsp;&nbsp;
		</c:if>
		${n}
	</c:forEach>
	
	<hr><br>
	function<br>
	"Hello JSTL" 길이 : <%= "Hello JSTL".length() %><br>
	"Hello JSTL" 길이(JSTL) : ${ fn:length("Hello JSTL") }<br>
	
	<c:set var="str" value="Hello JSTL" />
	str 길이 : <%= str.length() %><br>
	str 길이(JSTL) : ${ fn:length(str) }<br>
</body>
</html>