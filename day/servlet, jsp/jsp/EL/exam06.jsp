<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] names = {"홍길동", "강길동", "윤길동"};
	
	pageContext.setAttribute("name", names);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	names[0] : <%= names[0] %><br>
	names[1] : <%= names[1] %><br>
	names[2] : <%= names[2] %><br>
	<%-- names[3] : <%= names[3] %><br> --%> <!-- error -->
	
	<hr>
	
	el names[0] : ${ name[0] }<br>
	el names[1] : ${ name[1] }<br>
	el names[2] : ${ name[2] }<br>
	el names[3] : ${ name[3] }<br>
	
</body>
</html>