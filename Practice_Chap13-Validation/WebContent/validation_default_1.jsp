<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 유효성 검사-1</title>
<script type="text/javascript">
	function printForm() {
		alert("아이디 : " + document.loginFrm.id.value + "\n" +
			  "비밀번호 : " + document.loginFrm.pw.value);
	}
</script>
</head>
<body>
	<form name="loginFrm" action="#" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="pw">
		<p><input type="submit" value="로그인" onclick="printForm()">
	</form>
</body>
</html>