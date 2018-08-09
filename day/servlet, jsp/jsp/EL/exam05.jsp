<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> b = new HashMap<>();
	b.put("no", "1");
	b.put("title", "Test");
	
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	
	el no : ${ board.no }<br>
	el title : ${ board.title } <br>
	
	el aaa : ${ board.aaa } <br>
</body>
</html>