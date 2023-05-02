<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 유효성 검사-4</title>
<script type="text/javascript" src="./resources/js/validation.js"></script>
</head>
<body>
	<form name="loginFrm" action="validation_default_4_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pw">
		<p><input type="button" value="로그인" onclick="return checkLogin()">
	</form>
</body>
</html>