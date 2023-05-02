<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 저장값 출력하기</title>
</head>
<body>
	<p>표현식
	<p>아이디 : <%=id %>
	<p>비밀번호 : <%=pw %>
	
	<hr>
	
	<p>EL표기법
	<!-- EL태그의 내장객체 param객체를 이용하여 값을 출력하는 부분 -->
	<p>아이디 : ${param.id }
	<p>비밀번호 : ${param.pw }
	
	<hr>
	
	<!-- applicationScope내장객체는 웹프로젝트에 전부 적용이 되는 값.
	sessionScope내장객체는 한 브라우저당 발생하므로 역시 값이 출력이 될 것이다. -->
	<p>applicationScope : ${applicationScope.application}
	<p>sessionScope : ${sessionScope.session}
	
	<!-- pageScope과 requestScope내장객체는 현재 이 페이지에는 적용이 되지 않아 결과값이
	도출되지 않을 것이다. -->
	<p>requestScope : ${requestScope.request}
	<p>pageScope : ${pageScope.page}
</body>
</html>