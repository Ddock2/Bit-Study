<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <c:set var="msg" value="hi"/> <br> --%>
	<c:out value="JSTL"/> <br>
	msg변수 미설정: <c:out value="${ msg }" default="msg없다"/><br>
	
	value속성에 태그가 들어있는 경우(escapeXML=true)<br>
	<c:out value="<hr>" escapeXml="true" /><br>
	
	value속성에 태그가 들어있는 경우(escapeXML=false)<br>
	<c:out value="<hr>" escapeXml="false" /><br>
</body>
</html>