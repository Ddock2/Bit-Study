<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	var httpRequest = null;
	
	function getXMLHttpRequest(){
		if(window.XMLHttpRequest){
			return new XMLHttpRequest();
		}else if(window.ActiveXObject){
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
		return null
	}
	
	function sendProcess(){
		
		httpRequest = getXMLHttpRequest();

		httpRequest.onreadystatechange = callbackFunction;
		httpRequest.open("GET", "hello.jsp", true);
		httpRequest.send(null);
		
	}
	
	function callbackFunction(){
		
		/*
			status(상태코드)
			200 : OK (요청성공)
			403 : 엑세스 거부
			404 : Not Found (페이지를 못찾을 경우)
			405 : 서블릿 에러
			500 : Server Error (서버에서 결과 생성 시 오류 발생)
		*/
		var debug = document.getElementById("debug");
		switch(httpRequest.readyState){
		
			case 1:
				debug.value += "Loading...\n";
				break;
			case 2:
				debug.value += "Loaded...\n";
				break;
			case 3:
				debug.value += "Interactive...\n";
				break;
			case 4:
				debug.value += "Complete!\n\n";
				
				// 서버 응답 후 상태코드 표시
				if(httpRequest.status == 200){
					debug.value += '웹서버에서 정상적으로 수행\n';
				}else{
					debug.value += '웹서버에서 오류 발생\n';
					debug.value += '오류코드 : ' + httpRequest.status + '\n';
					debug.value += '오류내용 : ' + httpRequest.statusText + '\n';
				}
				
				break;
		
		}
		
	}
	
	function clearOnClick(){
		var debug = document.getElementById("debug");
		debug.value = "";
	}
	
</script>
</head>
<body>
	<textarea rows="6" cols="50" id="debug"></textarea>
	<br>
	<input type="button" value="서버호출" onclick="sendProcess()">
	<input type="button" value="초기화" onclick="clearOnClick()">
</body>
</html>