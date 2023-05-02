<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈 예제-2</title>
<style type="text/css">
	/* http://www.w3schools.com/colors/colors_picker.asp페이지를 즐겨찾기에 넣어두고
	색상관련하여 참조할 때 사용하자. */
	#formArea {
		margin: auto;
		width: 600px;
		border: 1px solid black;
		background-color: #ff99ff;
	}
	h2 {
		text-align: center;
	}
</style>
</head>
<body>
	<section id="formArea">
		<h2>회원 가입을 위해서 아래의 내용을 입력해주세요.</h2>
		<form action="customerbean.jsp" method="post">
			<fieldset>
				<label>아이디 : </label>
				<input type="text" name="id" id="id" required><br>
				<label>비밀번호 : </label>
				<input type="password" name="pw" id="pw" required><br>
				<label>이름 : </label>
				<input type="text" name="name" id="name" required><br>
				<label>생년월일 : </label>
				<input type="date" name="birthday" id="birthday"><br>
				<label>주소 : </label>
				<input type="text" name="addr" id="addr"><br>
				<label>이메일 : </label>
				<input type="email" name="email" id="email"><br>
				<input type="submit" value="가입하기">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="초기화">
			</fieldset>
		</form>
	</section>
</body>
</html>