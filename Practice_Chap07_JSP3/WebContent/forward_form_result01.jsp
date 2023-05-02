<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼태그와 포워드 결과1</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		System.out.println("forward_form_result01.jsp 지나감");
	%>
	<jsp:forward page='<%=request.getParameter("forwardPage")%>'>
		<jsp:param value="053-666-7777" name="tel"/>
	</jsp:forward>
</body>
</html>