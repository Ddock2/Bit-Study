<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		http://localhost:8000/Lecture-Web/jsp/el/exam02.jsp?id=hong&name=aaa 호출했다 가정하에
			hong, aaa 추출하는 코드		
	 --%>
	 <%
	 	String id = request.getParameter("id");
	 	String[] hobbys = request.getParameterValues("hobby");
	 	if(hobbys == null){
	 		hobbys = new String[]{"파라미터없음"};
	 	}
	 %>
	 ID : <%=id %><br>
	 ID : <%=request.getParameter("id") %><br>
	 ID : ${ param.id }<br>
	 
	 NAME : <%=request.getParameter("name") %><br>
	 NAME : ${ param.name }<br>
	 
	 <%--
	 	http://localhost:8000/Lecture-Web/jsp/EL/exam02.jsp?id=hong&name=aaa&hobby=music&hobby=movie
	 		hobby만 출력
	 --%>
	 hobby[0] : <%=hobbys[0] %><br>
	 hobby[0] : ${ paramValues.hobby[0] }<br>
</body>
</html>