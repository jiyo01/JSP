<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립-선언부, 표현식 실습-6</title>
</head>
<body>
	<!-- 선언부 - 전역의 성질을 띈다. -->
	<%!
		int i = 10;
		String str = new String("신은혁");
		
		public int add(int x, int y) {
			return x + y;
		}
	%>
	<!-- 아래는 표현식을 사용하지 않고 내장객체인 out을 이용하여 값을 출력하는 것이다. -->
	<p><b>i의 값 : </b><% out.println(i + "<br>");%></p><br>
	<p><b>str의 값 : </b><% out.println(str + "<br>");%></p><br>
	<p><b>add(100,500)호출 결과 : </b><% out.println(add(100,500) + "<br>");%></p><br>

</body>
</html>