<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 삭제</title>
</head>
<body>
	<h1>쿠키의 속성을 삭제하는 cookieDel.jsp페이지 입니다.</h1>
	<%
		System.out.println("서버에서 쿠키를 삭제하였습니다.");
		request.setCharacterEncoding("UTF-8");
		Cookie[] cookies = request.getCookies(); //요청들어오는 쿠키값을 받아야 삭제를 한다.
		for(int i = 0; i < cookies.length; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			if(name.equals("abcde")) {
				out.println("삭제 전");
				out.println("cookies[" + i + "] name : " + name);
				out.println("<br>");
				out.println("cookies[" + i + "] value : " + value);
				//유효기간을 0초로 설정하면 삭제를 하는 효과와 동일하다.(새로고침을 해주면 출력이 되지않는다.)
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				out.println("<br><br>");
				out.println("삭제 후");
				out.println("cookies[" + i + "] name : " + name);
				out.println("<br>");
				out.println("cookies[" + i + "] value : " + value);
				//위의 코드에서 쿠키의 수정이 있었으므로 다시 response객체에 쿠키를 추가한다. 
			}
		}
	%>
	<br><br>
	<a href="cookieTest.jsp">쿠키 확인 페이지 이동</a>
</body>
</html>