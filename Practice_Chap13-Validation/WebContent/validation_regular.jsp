<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식 이용한 유효성 검사</title>
<script type="text/javascript">
	function checkMember() {
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; /* 아이디는 숫자로 시작하면 안된다. */
		var regExpName = /[가-힣]/;  /* 이름은 한글만 받겠다. */
	}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form name="Member" action="validation_regular_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pw">
		<p>이름 : <input type="text" name="name">
		<p>연락처 : <select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				  </select> - <input type="text" maxlength="4" size="4" name="phone2"> - 
				  			  <input type="text" maxlength="4" size="4" name="phone3">
		<p>이메일 : <input type="email" name="email">
		<p><input type="button" value="가입하기" onclick="return checkMember()">
	</form>
</body>
</html>