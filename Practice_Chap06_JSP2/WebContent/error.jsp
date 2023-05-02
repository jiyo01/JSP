<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	<%
		//product.jsp는 현재 컨텍스트에는 존재하질 않아서 404에러가 발생할 것이다.
		response.sendRedirect("product.jsp");  //404에러 발생
		
		//int a = 100/0;  //500에러 발생 
	%>
</body>
</html>