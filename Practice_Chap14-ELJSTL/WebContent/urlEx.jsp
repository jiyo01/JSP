<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core태그 라이브러리를 사용하기 위해서는 반드시 선언을 해야 한다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 경로지정을 간단히 하기 위해서 아래코드를 추가함 -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- var는 url변수명이고 value는 페이지의 url값을 설정한다. -->
<!-- url태그로 페이지 이동을 하면, get방식으로 이동한다라는 것을 기억하자. -->
<c:url var="url" value="url_result.jsp">
	<c:param name="id" value="shin" />
	<c:param name="pw" value="1234" />
	<c:param name="name" value="신은혁" />
	<c:param name="email" value="shin@daum.net" />
</c:url>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 url태그</title>
</head>
<body>
	<a href="${url}">회원정보 출력</a>
</body>
</html>