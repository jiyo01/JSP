<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core태그 라이브러리를 사용하기 위해서 반드시 선언을 해야 한다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 코어태그 중에 set(변수값 저장)을 이용하여 var는 변수이름, value는 변수에 저장되는 값,
	 scope은 범위지정 -->
<c:set var="id" value="shin" scope="page" />
<c:set var="pw" value="1234" scope="page" />
<!-- 아래는 변수값을 el표기법을 이용하여 저장을 하고 있다. -->
<c:set var="name" value="${'홍길동'}" scope="page" />
<c:set var="age" value="${22}" scope="page" />
<c:set var="height" value="${177}" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 choose태그</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="yellow">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>나이</b></td>
			<td width="7%"><b>키</b></td>
		</tr>
		
		<c:choose>
			<c:when test="${empty name}">
				<tr align="center">
					<td colspan="5">이름을 입력하세요!!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td><b>${id}</b></td>
					<td><b>${pw}</b></td>
					<td><b>${name}</b></td>
					<td><b>${age}</b></td>
					<td><b>${height}</b></td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>