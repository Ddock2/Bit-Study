<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num = 10;
	%>
	num : <%= num %><br>
	<%!
		private String str = "Hello";	// 멤버변수 선언
	%>
	msg : <%=str %><br>
	
	<%!
		public int getSum(int a, int b){
			int s = 0;
			for(int i=a; i<=b; i++){
				s += i;
			}
			
			return s;
		}
	%>
	1 ~ 10사이의 총합 : <%=getSum(1,10)%> <br>
</body>
</html>