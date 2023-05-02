<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	#loginFormArea {	/* id선택자 */
		text-align:center;
		width:250px;
		margin:auto;
		border:1px solid black;
	}
	h1 {	/* 태그 선택자 */  
		text-align:center;
		color:blue;
	}
</style>
</head>
<body>
	<h1>로그인</h1>
	<section id="loginFormArea">
		<form action="login" method="post">
		<br>
		<label>아이디 : </label>		<!-- 브라우저에 글자를 표식하는 태그 -->
		<input type="text" name="id">
		<br><br>
		<label>이름 : </label>
		<input type="text" name="name">
		<br><br>
		<label>비밀번호 : </label>
		<input type="password" name="pw">
		<br><br>
		<input type="submit" value="로그인">
		</form>
	</section>
</body>
</html>
