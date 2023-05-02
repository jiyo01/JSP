<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="join" method="post">
		<b>아이디 </b><input type="text" name="id" required="required"><br>
		<b>비밀번호 </b><input type="password" name="pw" required="required"><br>
		<b>비밀번호 확인 </b><input type="password" name="pwconfirm" required="required"><br>
		
		<!-- checkbox는 다중선택이 가능하다. 아울러 name이라는 속성은 반드시 동일한 값으로 설정 해야된다. -->
		<b>취미 </b><input type="checkbox" name="hobby" value="read">독서&nbsp;&nbsp;
				   <input type="checkbox" name="hobby" value="cook">요리&nbsp;&nbsp;
				   <input type="checkbox" name="hobby" value="run">조깅&nbsp;&nbsp;
				   <input type="checkbox" name="hobby" value="swim">수영&nbsp;&nbsp;
				   <input type="checkbox" name="hobby" value="sleep">낮잠&nbsp;&nbsp;
				   <br>
		<!-- radio는 단 하나만 선택 가능하다. 아울러 name이라는 속성은 반드시 동일한 값으로 설정 해야된다. -->
		<b>전공 </b><input type="radio" name="major" value="kor" checked="checked">국문과&nbsp;&nbsp;
				   <input type="radio" name="major" value="eng">영문과&nbsp;&nbsp;
				    <input type="radio" name="major" value="math">수학과&nbsp;&nbsp;
				     <input type="radio" name="major" value="des">디자인과&nbsp;&nbsp;
				     <br>
		<b>학부 </b>
		<select name="collage">
			<option value="info" selected="selected">정보통신학부</option>
			<option value="human">인문학부</option>
			<option value="teach">사범대학부</option>
			<option value="design">디자인학부</option>
		</select>
		<br><br>
		<input type="submit" value="회원가입"> <input type="reset" value="다시입력">
	</form>
</body>
</html>