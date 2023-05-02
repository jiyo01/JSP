<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 아래는 이전에 배웠던 액션태그 중 useBean, setProperty를 사용해서 값을 지정하고 있다. -->
<jsp:useBean id="member" class="sec01_exam.MemberInfo" scope="page" />
<jsp:setProperty name="member" property="name" value="신은혁" />
<jsp:setProperty name="member" property="id" value="Shin" />
<jsp:setProperty name="member" property="pw" value="12345" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 액션태그 표기법</title>
</head>
<body>
	<h2>JSP액션태그 사용</h2>
	이름 : <jsp:getProperty name="member" property="name" /><br>
	아이디 : <jsp:getProperty name="member" property="id" /><br>
	비밀번호 : <jsp:getProperty name="member" property="pw" /><br>
	
	<hr>
	
	<p> EL 표현방법은 코드의 가독성이 좋고, 표기법이 간단해서 코드를 절약할 수 있다.
	<p> 이름 : ${member.name}
	<p> 아이디 : ${member.id}
	<p> 비밀번호 : ${member.pw}
</body>
</html>