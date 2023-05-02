<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션태그의 파라미터 전달</title>
</head>
<body>
	<h2>include액션태그 param태그 테스트</h2>
	<jsp:include page="include_param_result.jsp">
		<jsp:param value="이순신장군님" name="name"/>
		<jsp:param value="58" name="age"/>
	</jsp:include>
	<%-- <%
		request.setAttribute("name", "이순신장군님");
		request.setAttribute("age", 58);
	%>
	<%@ include file="include_param_result.jsp" %> --%>
	<br>
	<h2>다시 include액션태그 param태그 테스트 페이지입니다.</h2>
	
</body>
</html>