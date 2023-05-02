<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("jy", "지영");
		session.setAttribute("sh", "수호");
	%>
	<a href="myTest2.jsp">세션값 확인</a>
</body>
</html>