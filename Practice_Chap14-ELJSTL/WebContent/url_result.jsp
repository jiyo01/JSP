<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>url태그 결과</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="yellow">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<!-- param태그를 이용해서 값을 출력하고 있다. -->
		<tr align="center">
			<td><b>${param.id}</b></td>
			<td><b>${param.pw}</b></td>
			<td><b>${param.name}</b></td>
			<td><b>${param.email}</b></td>
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