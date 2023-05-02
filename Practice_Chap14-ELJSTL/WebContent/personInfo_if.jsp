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
<title>JSTL의 if태그</title>
</head>
<body>
	<!-- jstl라이브러리의 core라이브러리의 if태그에는 elseif, else는 없다. -->
	<c:if test="${true}">
		<h2>항상 참입니다.</h2>
	</c:if>
	<%
		if(true) {
	%>		
			<h2>항상 참입니다.</h2>
	<% 	
		}
	%>
	
	<c:if test="${11==11}">
		<h2>두 값은 같습니다.</h2>
	</c:if>	
	<c:if test="${11!=18}">
		<h2>두 값은 틀립니다.</h2>
	</c:if>
	<c:if test="${(id == 'shin') && (name == '홍길동')}">
		<h2>아이디는 ${id}이고, 이름은 ${name}입니다.</h2>
	</c:if>
	<c:if test="${age == 22}">
		<h2>나이는 ${age}입니다.</h2>
	</c:if>
	<c:if test="${height>170}">
		<h2>${name}의 키는 170보다 큰 ${height}입니다.</h2>
	</c:if>
</body>
</html>