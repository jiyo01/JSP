<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HttpServletResponse를 이용한 sendRedirect</title>
</head>
<body>
	<%
		request.setAttribute("id", "abcde");
		request.setAttribute("pw", "12345");
		
		pageContext.getSession().setAttribute("name", "aaaa");
		pageContext.getSession().setAttribute("hakbun", "1111");
		
		//HttpServletResponse를 통해서 위임을 하고 있지만 sendRedirect() 방법은
		//새로운 request객체를 생성하므로 이전 요청이 들어온 request객체는 제거되어서
		//속성값들을 참조할 수가 없다.
		response.sendRedirect("redirectResult.jsp");
	%>
</body>
</html>