<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>	<!-- import -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1 - 10사이에 임의의 정수</h2>
	<%
		//java.util.Random r = new java.util.Random();
		Random r = new Random();	
		int random = r.nextInt(10) + 1;
	%>
	추출된 정수 :<%=random %>
</body>
</html>