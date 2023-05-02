<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 산술논리연산자 이용</title>
</head>
<body>
	<h2>EL태그 사용</h2>
	
	${120+1}<br>
	${1200/8}<br>
	${99.99 > 10}<br>
	${(1>2) ? 2 : "AA"}<br>
	${(1>2) && (1<2)}<br>
	${(1>2) || (1<2)}<br>
	
	<hr><br>
	<%= 120+1 %><br>
	<%= 1200/8 %><br>
	<%= 99.99 > 10 %><br>
	<%= (1>2) ? 2 : "AA" %><br>
	<%= (1>2) && (1<2) %><br>
	<%= (1>2) || (1<2) %><br>
</body>
</html>