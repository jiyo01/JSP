<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<script type="text/javascript">
		alert("로그인 성공");
	</script>
	<%
		request.setCharacterEncoding("UTF-8");
		Cookie[] cookies = request.getCookies();
		for(int i = 0; i < cookies.length; i++) {
			//실제 아이디 값을 얻는 코드이다.(쿠키를 이용하여)
			String id = cookies[i].getValue();
			if(id.equals("abcde")) {
				out.println(id + "님 반갑습니다.");
			}
		}
	%>
	<h2>환영합니다.</h2>
	<br><br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>