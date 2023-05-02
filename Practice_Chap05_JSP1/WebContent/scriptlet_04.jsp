<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립-선언부, 표현식 실습-4</title>
</head>
<body>
	<!-- 선언부 - 전역의 성질을 띈다. -->
	<%!
		int i = 10;
		String str = "홍길동";
		
		public int add(int x, int y) {
			return x + y;
		}
	%>
	<!-- 표현식에는 ;을 붙이지 않는다. -->
	<p><b>i의 값 : </b><%= i %></p>
	<p><b>str의 값 : </b><%= str %></p>
	<p><b>add(100,2)호출 결과 : </b><%= add(100,2) %></p>
</body>
</html>



