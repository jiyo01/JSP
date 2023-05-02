<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//get방식으로 받을 때 
	String name = request.getParameter("name");
	String score = request.getParameter("score");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>불합격창</title>
</head>
<body>
	<h1><%=name %>님은 <%=score %>점으로 불합격하셨습니다.</h1>
	<a href="score.jsp">점수 입력창으로 이동</a>
</body>
</html>