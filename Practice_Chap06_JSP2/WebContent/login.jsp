<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
	<h1>로그인 페이지 입니다.</h1>
	<form action="loginOk.jsp" method="post">
		<p><b>아이디 : </b><input type="text" name="id" size="15" required autofocus><br>
		<p><b>비밀번호 : </b><input type="password" name="pw" size="15" required><br>
		<p><input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="초기화">
	</form>
</body>
</html>