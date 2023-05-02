<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	//요청파라미터 인코딩 
 	request.setCharacterEncoding("utf-8");
 	//요청파라미터의 값을 가져오기 위한 코드
 	String id = request.getParameter("user_id");
 	String pw = request.getParameter("user_pw");
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과창</title>
</head>
<body>
	<%
		//id, pw의 유효성 검사
		if((id == null || id.length() == 0) || (pw == null || pw.length() == 0)) {
	%>
		<p>아이디, 비밀번호를 입력해주세요!</p>
		
		<!-- 입력이 되지 않았다면 a태그를 이용해서 다시 로그인 페이지로 이동시키고 있다. -->
		<a href="main.jsp">로그인 페이지로 이동</a>
	<% }
		else {
			if(id.equals("admin")) {
	%>		
	<h1>관리자로 로그인 하셨습니다.</h1>
	<form>
		<input type="button" value="회원정보 리스트 보기"><br>
		<input type="button" value="회원정보 수정하기"><br>
		<input type="button" value="회원정보 삭제하기"><br>
	</form>			
	<%		} 
		}
	%>	
	
	<h1>비밀번호 : <%=pw%></h1>
		
</body>
</html>