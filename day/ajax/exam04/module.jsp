<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="httpRequest.js"></script>
<script>
	function sendOnClick() {
		
//		var name = document.inputForm.name;
		var name = document.getElementById("name");
		var age  = document.inputForm.age;
		var addr = document.inputForm.addr;
	
//		var params = "name=" + name.value + "&age=" + age.value + "&addr=" + addr.value;
		var params = {'name' : name.value, age : age.value, addr : addr.value};
		
//		sendProcess("GET", "sample.jsp", "name=hong&age=25", callbackFunction)
		sendProcess("POST", "sample.jsp", params, callbackFunction);

		
	}
	
	function callbackFunction() {
		
		var msg = "";
		
		switch(httpRequest.readyState) {
		case 1 : 
			msg += "Loading...\n";
			break;
		case 2 : 
			msg += "Loaded...\n";
			break;
		case 3 : 
			msg += "Interactive...\n";
			break;
		case 4 : 
			msg += "Complete...\n";
			// 서버 응답 후 상태코드 표시 
			if(httpRequest.status == 200) {
				msg += '웹서버에서 정상적으로 수행...\n';
				msg += '실행결과 : ' + httpRequest.responseText + '\n';
			} else {
				msg += '웹서버에서 오류발생...\n';
				msg += '오류코드 : ' + httpRequest.status + '\n';
				msg += '오류내용 : ' + httpRequest.statusText + '\n';
			}
			break;
		}
		
		debugTrace(msg);
	}
	
	function debugTrace(msg) {
		var debug = document.getElementById("debug");
		debug.value += msg;
	}	
	
</script>
</head>
<body>
	<textarea rows="8" cols="80" id="debug"></textarea><br>
	<form name="inputForm">
		이름 : <input type="text" name="name" id="name"><br>
		나이 : <input type="text" name="age"><br>
		주소 : <input type="text" name="addr"><br>
		<input type="button" value="서버에 자료전송" onclick="sendOnClick()" >
	</form>
</body>
</html>