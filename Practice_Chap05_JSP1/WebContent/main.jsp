<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<form action="result_admin.jsp" method="post">
		<p>아이디 : <input type="text" name="user_id"><br>
		<p>비밀번호 : <input type="password" name="user_pw"><br>
		<input type="submit" value="로그인">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시작성">
	</form>
</body>
</html>