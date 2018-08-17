<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#msgView {
		width: 500px;
		height: 200px;
		border: 1px solid red;
	}
</style>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	/*
	 	type	메소드(문자열)
		url		요청주소(문자열)
		data	파라미터(문자열, 객체)
		success 수신성공(함수)
		error	수신실패(함수)
		async	동기/비동기설정(기본값 : 비동기)
	 */

	$(document).ready(function() {
		$(':button').click(function() {
			$.ajax({
				type : 'get',
				url : 'hello.jsp',
				success : function(data) {
					// alert('성공');
					console.log(data);
					
					//$('#msgView').html(data);
					$('#msgView').append(data);					
				}, fail : function() {
					// alert('실패');
				}
			
			});
		});
	});
</script>
</head>
<body>
	<h2>서버에서 받은 메세지</h2>
	<div id="msgView"></div>
	<br>
	<input type="button" value="서버에 자료요청" >
</body>
</html>
