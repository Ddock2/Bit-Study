<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	5 + 5 : <%= 5 + 5 %><br>
	5 + 5 : ${ 5 + 5 }<br>
	9 % 5 : ${ 9 % 5 }<br>
	9 mod 5 : ${ 9 mod 5 }<br>
	9 > 5 : ${ 9 > 5 }<br>
	9 gt 5 : ${ 9 gt 5 }<br>
	9 == 5 : ${ 9 == 5 }<br>
	9 eq 5 : ${ 9 eq 5 }<br>
	9 != 5 : ${ 9 != 5 }<br>
	9 ne 5 : ${ 9 ne 5 }<br>
	not(9 eq 5) : ${not(9 eq 5)}<br>
	
	(5 == 5) && (6 > 4) : ${ (5 == 5) && (6 > 4) }<br>
	(5 eq 5) and (6 gt 4) : ${ (5 eq 5) and (6 gt 4) }<br>
	
	empty str : ${ empty str }<br>
	not empty str : ${ not empty str }<br>
	
	5의 짝/홀 판단 : ${ 5 % 2 == 0 ? "짝수" : "홀수"}<br>
	5의 짝/홀 판단 : ${ 5 mod 2 eq 0 ? "짝수" : "홀수"}<br>
</body>
</html>