<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('button').click(function(){
			var date = $('#searchDate').val()
/*	 		for(int i=0; i<2; i++){
				date = date.replace('-','');
			} */
			while(date.indexOf('-') != -1){
				date = date.replace('-','');
			}
			$.ajax({
				type : 'get',
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
				data : {
					key : "176cea218c0deed9630e64b5324bba3d",
					targetDt : date
				},
				dataType : "json",
				success : callback
			})
		});
	});
	
	function callback(data){
		console.log(data.boxOfficeResult.dailyBoxOfficeList);
		var boxOfficeList = data.boxOfficeResult.dailyBoxOfficeList;
		$('#view').empty();
		$('#view').append("<h3>&lt" + $('#searchDate').val() + " 박스오피스 순위&gt</h3>");
		for(var i=0; i<boxOfficeList.length; i++){
			var rank = boxOfficeList[i].rank;
			var movieName = boxOfficeList[i].movieNm;
			var movieCd = boxOfficeList[i].movieCd;
			
			$('#view').append("<b>" + rank + "위</b>&nbsp;" + movieName);
			$('#view').append('&nbsp;&nbsp;<button type="button" class="btn btn-outline-primary btn-sm" onclick="detail(' + movieCd + ')">상세보기</button><br><br>');
		}
	}
	
	function detail(movieCd){
		location.href = "detail.jsp?movieCd=" + movieCd;
	}
</script>
</head>
<body>
	<h2>일일 박스오피스 조회</h2>
	검색날짜 : <!-- <input type="text" id="searchDate" placeholder="yyyy-mm-dd"> -->
			<input type="date" id="searchDate">
	<button>검색</button><br><br>
	<div id="view" style="width:500px; height:600px; border: 1px solid red;"></div>
	<br>
	
</body>
</html>