<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL out태그</title>
</head>
<body>
	<table border="1">
		<tr align="center">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
		<!-- out태그에는 value는 출력값, default는 value에 지정된 값이 존재하지 않을때 출력할 기본값 -->
		<tr align="center">
			<td><c:out value="${param.id}" /></td>
			<td><c:out value="${param.pw}" /></td>
			<td><c:out value="${param.name}" /></td>
			<td><c:out value="${param.email}" /></td>
		</tr>
		<tr align="center">
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
			<td><%=email%></td>
		</tr>
	</table>
</body>
</html>