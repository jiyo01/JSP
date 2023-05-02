<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500에러 페이지</title>
</head>
<body>

	<%
		response.setStatus(200);
		response.setCharacterEncoding("UTF-8");
	%>
	<h1>죄송합니다.서비스 실행 중 오류가 발생했습니다.</h1>
	<h1>잠시 후 다시 시도해주시면 감사하겠습니다.</h1>
	<img alt="에러 이미지" src="images/error_image.png">
</body>
</html>