<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	var m=null;
	
	$(document).ready(function() {
		$.ajax({
			type : 'get',
			url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json',
			data : {
				key : "176cea218c0deed9630e64b5324bba3d",
				movieCd : ${param.movieCd}
			},
			dataType : "json",
			success : callback
		})
	})
	
	function callback(data){
		m = data;
		var movieDetail = data.movieInfoResult.movieInfo;
		
		console.log(data);
		$('#view').append("<h2>" + movieDetail.movieNm + "</h2>(" + movieDetail.movieNmEn + ")" + "<br><hr><br>");
		$('#view').append("<b>개요</b> : ");
	 	for(var i=0; i<movieDetail.genres.length; i++){
	 		if(i!=0){
				$('#view').append(", ");
	 		}
			$('#view').append(movieDetail.genres[i].genreNm);
		}
		$('#view').append(" | ");
		for(var i=0; i<movieDetail.nations.length; i++){
	 		if(i!=0){
				$('#view').append(", ");
	 		}
			$('#view').append(movieDetail.nations[i].nationNm);
		}
		$('#view').append(" | ");
		$('#view').append(movieDetail.showTm + "분");
		$('#view').append(" | ");
		var openDt = movieDetail.openDt;
		$('#view').append( openDt.substr(0,4) + "년 " + openDt.substr(4,2) + "월 " + openDt.substr(6,2) + "일  개봉");

		
		$('#view').append("<br><b>감독</b> : ");
		for(var i=0; i<movieDetail.directors.length; i++){
	 		if(i!=0){
				$('#view').append(", ");
	 		}
			$('#view').append(movieDetail.directors[i].peopleNm);
		}
		
		$('#view').append("<br><b>출연</b> : ");
		
		for(var i=0; i<movieDetail.actors.length; i++){
	 		if(i!=0){
				$('#view').append(", ");
	 		}
			$('#view').append(movieDetail.actors[i].peopleNm);
		}
		
		$('#view').append("<br><b>등급</b> : ");
		
		for(var i=0; i<movieDetail.audits.length; i++){
	 		if(i!=0){
				$('#view').append(", ");
	 		}
			$('#view').append(movieDetail.audits[i].watchGradeNm);
		}
		
	}
	
</script>
</head>
<body>
	<h1>영화 상세 정보</h1>
	<div id="view" style="width:700px; border: 1px solid red; "></div>
	<br>
</body>
</html>