<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	List<String> dataList = new ArrayList<String>(); //인터페이스의 필드의 다형성
	dataList.add("반갑습니다.");
	dataList.add("축하합니다.");
	dataList.add("안녕하세요.");
%>
<!-- list라는 변수에 dataList를 저장하고 있다. -->
<c:set var="list" value="<%=dataList%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL라이브러리 forEach태그</title>
</head>
<body>
	<!-- var:변수이름, items:반복할 객체이름, begin:시작값 end:종료값, step:증감식, 
		 varStatus:반복 상태 속성 -->
	<!-- varStatus속성 - index : 0부터 시작하고, items에서 정의한 항목을 가르키는 번호
				count : 몇 번째 반복인지 나타내는 속성이며,1부터 시작한다.
				first : 첫 번째 반복인지 나타낸다.
				last : 마지막 반복인지 나타낸다. -->
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
		i = ${i} &nbsp;&nbsp;&nbsp;&nbsp; 반복횟수 : ${loop.count} <br>
	</c:forEach>
	<hr>
	<!-- 1.퀴즈 1~10출력 홀수만 출력하게끔 c:forEach태그를 이용하시오. -->
	<c:forEach var="i" begin="1" end="10" step="2" varStatus="loop">
		i = ${i} &nbsp;&nbsp;&nbsp;&nbsp; 반복횟수 : ${loop.count} <br>
	</c:forEach>
	<hr>
	<!-- 2.ArrayList컬렉션에 저장된 객체를 하나씩 가져와서 출력하시오. -->
	<c:forEach var="data" items="${list}" varStatus="loop">
		${data} &nbsp;&nbsp;&nbsp;&nbsp; 반복횟수 : ${loop.count} <br>
	</c:forEach>
	<hr>
	<!-- 3.구분자(delims)-콤마를 이용하여 문자열을 분리해서 출력하고 있다. -->
	<c:set var="car" value="소나타, 그랜져, SM7, 아반떼" />
	<c:forTokens var="token" items="${car}" delims=",">
		${token}<br>
	</c:forTokens>
</body>
</html>