<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼태그와 포워드 결과2</title>
</head>
<body>
	<h2>포워드 된 페이지(forward_form_result02.jsp)</h2>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= request.getParameter("age") %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%= request.getParameter("address") %></td>
		</tr>
		<tr>
		<!-- 전화번호의 경우는 forward_form_result01.jsp파일에서
			param액션태그로 넘어온 값이다. -->
			<td>전화번호</td>
			<td><%= request.getParameter("tel") %> </td>
		</tr>
	</table>
</body>
</html>