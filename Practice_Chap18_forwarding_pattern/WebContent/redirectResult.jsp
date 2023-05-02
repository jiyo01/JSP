<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirectResult창</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = (String)request.getAttribute("id");
		String pw = (String)request.getAttribute("pw");
		
		String name = (String)session.getAttribute("name");
		String hakbun = (String)session.getAttribute("hakbun");
		
		out.println("id : " + id + "<br>");
		out.println("pw : " + pw + "<br>");
		out.println("name : " + name + "<br>");
		out.println("hakbun : " + hakbun + "<br>");
	%>
</body>
</html>