<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
	<!-- 자바스크립트의 alert함수를 이용해서 메시지 창을 띄우고 다시 login.jsp파일로
	이동시키고 있다. -->
	<script type="text/javascript">
		alert("로그인에 실패");
		location.href = "login.jsp";
	</script>
</body>
</html>