<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 유효성 검사-2</title>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginFrm;
		
		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			form.id.focus();  /* id입력창으로 포커스를 준다. */
			return false;	  /* false를 리턴해줌으로써 페이지 이동을 막을 수 있다. */ 
		}
		if(form.pw.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.pw.focus();  /* pw입력창으로 포커스를 준다. */
			return false;
		}
		/* 위의 유효성 검사를 다 통과하면, 자바스크립트 함수 내에서 submit() 호출하고 있다. */
		form.submit();
	}
</script>
</head>
<body>
	<form name="loginFrm" action="validation_default_2_process.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="pw">
		<!-- submit타입에서 onclick을 누르면 경고창을 띄우고 페이지 이동이 일어난다. 
			 button타입에서 onclick을 누르면 경고창을 띄우고 페이지 이동이 일어나지 않는다. -->
		<p><input type="button" value="로그인" onclick="return checkLogin()">
	</form>
</body>
</html>