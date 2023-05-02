<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL내장객체</title>
</head>
<body>
	<form action="innerObjectOk.jsp" method="get">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pw">
		<p><input type="submit" value="로그인">
	</form>
	
	<%
		//각각의 EL 내장객체들에게 속성들을 지정하고 있다.
		application.setAttribute("application", "application내장객체");
		session.setAttribute("session", "session내장객체");
		request.setAttribute("request", "request내장객체");
		pageContext.setAttribute("page", "page내장객체");
	%>
</body>
</html>