<%@page import="kr.co.mlec.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO();

	b.setNo(1);
	b.setTitle("Test");
	
	// pageContext영역에 객체 등록
	// 이름 : board	값 : 생성된 BoardVO 객체
	
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.getNo() %><br>
	no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	
	title : <%= b.getTitle() %><br>
	title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	
	el no : ${ board.no } <br>
	el title : ${ board.title }<br>
	
	<%-- el aaa : ${ board.aaa } 		//error --%>
</body>
</html>