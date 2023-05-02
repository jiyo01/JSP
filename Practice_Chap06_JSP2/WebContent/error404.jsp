<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404에러 페이지</title>
</head>
<body>
	<%
		//200이라는 숫자는 페이지가 정상이라는 것을 의미한다.
		response.setStatus(200);
		response.setCharacterEncoding("UTF-8");
	%>
	<h1>찾고자 하는 페이지가 없습니다.</h1>
	<img alt="에러 이미지" src="images/error_image.png">
</body>
</html>