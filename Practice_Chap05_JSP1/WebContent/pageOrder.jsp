<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Import속성</title>
</head>
<body>
	<%!
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		Date date = new Date();
	%>
	<h1><%=sFormat.format(date)%></h1>
</body>
</html>