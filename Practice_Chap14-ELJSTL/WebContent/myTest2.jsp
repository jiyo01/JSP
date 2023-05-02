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
		String jVal = (String)session.getAttribute("jy");
		String sVal = (String)session.getAttribute("sh");
	%>
	
	<h3>표현식</h3>
	<p> jy의 밸류 : <%=jVal %>
	<p> sh의 밸류 : <%=sVal %>
	<hr>
	<h3>EL 표기법</h3>
	<p> jy의 밸류 : ${sessionScope.jy}
	<p> sh의 밸류 : ${sessionScope.sh}
</body>
</html>