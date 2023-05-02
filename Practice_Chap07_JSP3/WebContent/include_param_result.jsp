<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션태그 결과 페이지</title>
</head>
<body>
	<h2>include_param_result.jsp파일입니다.</h2>
	<%	
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		//페이지 지시자로 include를 사용하면 아래와 같은 파라미터값이 넘어올때
		//코드가 좀 불편하다.
		//String name = (String)request.getAttribute("name");
		//int age = (Integer)request.getAttribute("age"); 
	%>
	
	<p><b>넘어온 이름 : </b><%= name %>
	<p><b>넘어온 나이 : </b><%= age %>
</body>
</html>