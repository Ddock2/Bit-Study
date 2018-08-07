<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1 ~ 10 사이의 정수 출력</h2>
	<%
		int sum = 0;
		for(int i=1; i<=10; i++){
			//out.println(i + "<br>");
	%>
	<%=i %><br>
	<%
			sum += i;
		}
		out.println("1 ~ 10사이의 총합 : " + sum + "<br>");
	%>
	1 ~ 10사이의 총합 : <%=sum %><br>
</body>
</html>