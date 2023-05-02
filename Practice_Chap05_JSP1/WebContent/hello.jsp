<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP페이지</title>
</head>
<body>
	<!-- JSP의 기본태그 중에 스크립틀릿이다. 이 내부에는 자바 코드만 들어갈수가 있다. -->
	<%
		int i = 100;
		out.print("i의 값 : " + i); //out은 jsp의 내장 웹브라우저 출력 객체이다. 
	%>
	
	<h1>안녕하세요.JSP파일입니다.</h1>
	<h1>응답은 HTML코드로 합니다.</h1>
</body>
</html>





