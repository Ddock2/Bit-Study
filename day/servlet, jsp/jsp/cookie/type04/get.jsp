<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	Cookie[] cookies = request.getCookies();
	
	StringBuilder sb = new StringBuilder();
	
	if(cookies == null){
		sb.append("설정된 쿠키정보가 없습니다");
	}else{
		for(Cookie c : cookies){
			String cName = c.getName();
			String cValue = c.getValue();
			
			// decoding
			cName = URLDecoder.decode(cName, "utf-8");
			cValue = URLDecoder.decode(cValue, "utf-8");
			
			sb.append("쿠키이름 : " + cName + ", ");
			sb.append("쿠키값 : " + cValue + "<br> ");
		}
	}
	
	pageContext.setAttribute("sb", sb.toString());
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키정보</h2>
	${ sb }<br>
	
	<a href="remove.jsp">쿠키삭제</a>
</body>
</html>