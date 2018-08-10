<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<hr>
	받은 파라미터 정보<br>
	name : ${param.name}<br>
	age : ${param.age}<br>
	id : ${ requestScope.id }<br>
	id : ${ id }<br>
	<h3>인클루드된 내용</h3>
	<h3>인클루드된 내용</h3>
	<h3>인클루드된 내용</h3>
	<h3>인클루드된 내용</h3>
	<h3>인클루드된 내용</h3>
	<hr>
	<c:set var="phone" value="010-2222-3333" scope="request" />