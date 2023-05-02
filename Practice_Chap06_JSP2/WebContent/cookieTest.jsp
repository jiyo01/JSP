<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
	<h1>쿠키의 속성이 삭제된 것을 확인하는 cookieTest.jsp페이지 입니다.</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		System.out.println("삭제된 쿠키의 값을 출력해봅니다.");
		//쿠키의 유효시간이 0으로 설정한 쿠키가 리턴될 것이다.
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				out.println("현재 남아있는 쿠키 이름 : " + cookies[i].getName());
				out.println("현재 남아있는 쿠키 값 : " + cookies[i].getValue());
			}
		}
	%>
</body>
</html>