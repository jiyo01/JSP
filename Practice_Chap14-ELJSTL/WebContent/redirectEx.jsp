<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core태그 라이브러리를 사용하기 위해서는 반드시 선언을 해야 한다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("redirectEx.jsp파일 지나감");
	%>
	<c:redirect url="url_result.jsp">
		<c:param name="id" value="shin" />
		<c:param name="pw" value="1234" />
		<c:param name="name" value="홍길동" />
		<c:param name="email" value="shin@daum.net" />
	</c:redirect>
</body>
</html>